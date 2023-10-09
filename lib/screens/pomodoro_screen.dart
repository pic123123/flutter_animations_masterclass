import 'package:flutter/material.dart';
import 'dart:async';

import 'package:step_progress_indicator/step_progress_indicator.dart';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({super.key});

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  static const defalutFocusTime = 300;
  static const defalutRestTime = 300;
  static const focus = 'focus';
  static const rest = 'rest';
  int focusTime = defalutFocusTime;
  int restTime = defalutRestTime;
  bool isRunning = false;
  String current = focus;
  int round = 0;
  int goal = 0;
  late Timer focusTimer;
  late Timer restTimer;

  void _handleTimerOptionSelected(int minute) {
    setState(() {
      focusTime = minute * 60;
    });
  }

  void onTick(Timer timer) {
    if (focusTime == 0) {
      restTimer = Timer.periodic(const Duration(seconds: 1), onRest);
      focusTimer.cancel();
      setState(() {
        focusTime = defalutFocusTime;
        current = rest;
        round = round + 1;
      });
    } else {
      setState(() {
        focusTime = focusTime - 1;
      });
    }

    if (round == 4) {
      round = 0;
      goal = goal + 1;
    }
  }

  ///초기화
  void onRest(Timer timer) {
    if (restTime == 0) {
      restTimer.cancel();
      setState(() {
        restTime = defalutRestTime;
        current = focus;
        isRunning = false;
      });
    } else {
      setState(() {
        restTime = restTime - 1;
      });
    }
  }

  ///시작
  void onStartTimer() {
    setState(() {
      if (current == focus) {
        focusTimer = Timer.periodic(const Duration(seconds: 1), onTick);
      }
      if (current == rest) {
        restTimer = Timer.periodic(const Duration(seconds: 1), onRest);
      }
      isRunning = true;
    });
  }

  ///일시중지
  void onPauseTimer() {
    if (focusTimer.isActive) {
      focusTimer.cancel();
    } else if (restTimer.isActive) {
      restTimer.cancel();
    }
    setState(() {
      isRunning = false;
    });
  }

  ///중지버튼
  void onStopPressed() {
    if (focusTimer.isActive) {
      focusTimer.cancel();
    } else if (restTimer.isActive) {
      restTimer.cancel();
    }
    setState(() {
      isRunning = false;
    });
  }

  ///초기화버튼
  void onResetPressed() {
    if (isRunning && focusTimer.isActive) {
      focusTimer.cancel();
    } else if (isRunning && restTimer.isActive) {
      restTimer.cancel();
    }

    setState(() {
      isRunning = false;
      focusTime = defalutFocusTime;
      restTime = defalutRestTime;
      current = focus;
    });
  }

  List<String> format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration
        .toString()
        .split('.')
        .first
        .substring(2)
        .toString()
        .split(':');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Pomodoro Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'POMOTIMER',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Stack(children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: CircularStepProgressIndicator(
                        totalSteps: 100,
                        currentStep: (current == focus
                                ? defalutFocusTime - focusTime
                                : defalutRestTime - restTime) ~/
                            (defalutFocusTime / 100),
                        stepSize: 15,
                        selectedStepSize: 17,
                        selectedColor: Colors.red,
                        unselectedColor: Colors.grey,
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            format(current == focus ? focusTime : restTime)
                                .first,
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                              fontWeight: FontWeight.w800,
                              backgroundColor: Theme.of(context).cardColor,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyMedium?.color,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            format(current == focus ? focusTime : restTime)
                                .last,
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                              fontWeight: FontWeight.w800,
                              backgroundColor: Theme.of(context).cardColor,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  const SizedBox(height: 40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TimerOption(
                          minute: 15,
                          onTimeSelected: _handleTimerOptionSelected,
                        ),
                        const SizedBox(width: 10),
                        TimerOption(
                          minute: 20,
                          onTimeSelected: _handleTimerOptionSelected,
                        ),
                        const SizedBox(width: 10),
                        TimerOption(
                          minute: 25,
                          onTimeSelected: _handleTimerOptionSelected,
                        ),
                        const SizedBox(width: 10),
                        TimerOption(
                          minute: 30,
                          onTimeSelected: _handleTimerOptionSelected,
                        ),
                        const SizedBox(width: 10),
                        TimerOption(
                          minute: 35,
                          onTimeSelected: _handleTimerOptionSelected,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onResetPressed,
                        icon: const Icon(Icons.refresh),
                        color: Theme.of(context).primaryColorLight,
                        iconSize: 50,
                      ),
                      IconButton(
                        onPressed: isRunning ? onPauseTimer : onStartTimer,
                        icon: Icon(
                            isRunning ? Icons.pause_circle : Icons.play_circle),
                        color: Theme.of(context).primaryColorLight,
                        iconSize: 100,
                      ),
                      IconButton(
                        onPressed: onStopPressed,
                        icon: const Icon(Icons.stop),
                        color: Theme.of(context).primaryColorLight,
                        iconSize: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '$round/4',
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'ROUND',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '$goal/12',
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'GOAL',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

typedef TimeSelectedCallback = void Function(int minute);

class TimerOption extends StatelessWidget {
  final int minute;
  final TimeSelectedCallback onTimeSelected;

  const TimerOption({
    super.key,
    required this.minute,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTimeSelected(minute);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColorLight,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          '$minute',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium?.color,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
