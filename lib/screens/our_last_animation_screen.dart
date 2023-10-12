import 'package:flutter/material.dart';

class OurLastAnimationScreen extends StatefulWidget {
  const OurLastAnimationScreen({Key? key}) : super(key: key);

  @override
  State<OurLastAnimationScreen> createState() => _OurLastAnimationScreenState();
}

class _OurLastAnimationScreenState extends State<OurLastAnimationScreen> {
  int _index = 0;

  final List<Map<String, String>> items = [
    {
      'background': 'assets/games/like_a_dragon7.jpeg',
      'title': '용과 같이7 빛과 어둠의 행방　International',
      'description':
          '도쿄의 군소 야쿠자 조직의 말단 조원인 카스가 이치반은 자신이 저지르지도 않은 범죄를 뒤집어쓰고 18년형을 대신 살게 되었습니다. 충성심을 절대 버리지 않은 그는 형을 다 마치고 사회로 돌아왔지만 자신을 기다리는 사람은 아무도 없었고, 조직 역시 자신이 가장 존경했던 사람의 손에 의해 와해되었습니다. 이치반은 패밀리가 자신을 배신한 배경을 파헤치고 인생을 되찾기 위한 여정에 나섭니다. 그런 이치반의 편에는 사회 낙오자들이 오합지졸처럼 모여 있습니다. 해고당한 경찰 아다치, 노숙자 신세가 된 전직 간호사 난바, 그리고 사명감 넘치는 화류계 여성 사에코가 그들입니다. 이들은 함께 요코하마 지하 세계에서 불거지는 무력 충돌의 소용돌이에 휩싸여 전혀 생각해 본 적 없었던 영웅적인 행보에 나서야 합니다.',
      'thumbnail': 'assets/games/like_a_dragon7_title.jpeg'
    },
    {
      'background': 'assets/games/lost_judgement.jpeg',
      'title': '로스트 저지먼트: 심판받지 않은 기억',
      'description':
          '2021년 12월 도쿄 지방 재판소. 에하라 아키히로는 만원 지하철에서 한 여성을 추행한 혐의를 받고 있습니다. 현장을 빠져나가려는 시도가 있었으나 시민의 영상이 뉴스에 퍼졌고, 여론은 최고형을 요구하고 있습니다. "사흘 전, 요코하마의 폐건물에서 시신이 발견되었습니다. 신원은 파악되었습니까?" 혼란과도 같은 그의 발언은 법정을 가로질렀습니다. 그의 피고측 변호인, 시로사키 사오리는 에헤라가 살인 혐의로 기소된 것이 아니기에 사건에 있어 중요한 점을 간과한 것이 아닌가 의심합니다. 그리고 탐정 야가미 타카유키에게 사건의 조사를 의뢰합니다. 에하라는 어떻게 한 번에 두 가지 범죄를 저질렀는가? 성추행은 단지 위장이었는가? 에하라는 사법부 전체를 상대로 게임을 한 것인가? 희생자가 나오면서 야가미는 진실을 더 깊게 파고들고, 다음의 질문에 직면합니다. 법의 수호인가, 정의의 실현인가? 단 한 번의 실수로, 괴물이 될 수 있습니다...',
      'thumbnail': 'assets/games/lost_judgement_title.jpeg'
    },
    // add more items if needed
  ];

  void changeItem(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Last Animation Screen'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            // Make the image fill the entire screen
            child: Opacity(
              // Add opacity to the image
              opacity: .5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(items[_index]['background']!),
              ),
            ),
          ),
          Positioned(
            // Position the title and description at the center of the screen
            top: MediaQuery.of(context).size.height * .1,
            left: MediaQuery.of(context).size.width * .1,
            right: MediaQuery.of(context).size.width * .1,
            child: Column(
              children: [
                Text(
                  items[_index]['title']!,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  items[_index]['description']!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: .1,
              minChildSize: .1,
              maxChildSize: .5,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: myscrollController,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => changeItem(index),
                        child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.asset(items[index]['thumbnail']!,
                                fit: BoxFit.cover)),
                      );
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
