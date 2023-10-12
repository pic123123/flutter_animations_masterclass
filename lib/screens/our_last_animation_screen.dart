import 'package:flutter/material.dart';

class OurLastAnimationScreen extends StatefulWidget {
  const OurLastAnimationScreen({Key? key}) : super(key: key);

  @override
  State<OurLastAnimationScreen> createState() => _OurLastAnimationScreenState();
}

class _OurLastAnimationScreenState extends State<OurLastAnimationScreen> {
  int _index = 0;

  final ScrollController scrollController = ScrollController();
  bool _showCards = false; // Add this line
  final List<Map<String, String>> items = [
    {
      'background': 'assets/games/like_a_dragon7.jpeg',
      'title': '용과 같이7 빛과 어둠의 행방　International',
      'subTitle': '하류 인생에서 용이 되어 승천하기까지의 서사가 담긴 역동적인 RPG 전투',
      'subTitle2': '지하 세계에서 즐기는 여가',
      'subImg':
          'https://gmedia.playstation.com/is/image/SIEPDC/yakuza-like-a-dragon-screenshot-03-ps4-30apr20-en-us?\$1600px--t\$',
      'subImg2':
          'https://gmedia.playstation.com/is/image/SIEPDC/yakuza-like-a-dragon-screenshot-02-ps4-30apr20-en-us?\$1600px\$',
      'description':
          '도쿄의 군소 야쿠자 조직의 말단 조원인 카스가 이치반은 자신이 저지르지도 않은 범죄를 뒤집어쓰고 18년형을 대신 살게 되었습니다. 충성심을 절대 버리지 않은 그는 형을 다 마치고 사회로 돌아왔지만 자신을 기다리는 사람은 아무도 없었고, 조직 역시 자신이 가장 존경했던 사람의 손에 의해 와해되었습니다. 이치반은 패밀리가 자신을 배신한 배경을 파헤치고 인생을 되찾기 위한 여정에 나섭니다. 그런 이치반의 편에는 사회 낙오자들이 오합지졸처럼 모여 있습니다. 해고당한 경찰 아다치, 노숙자 신세가 된 전직 간호사 난바, 그리고 사명감 넘치는 화류계 여성 사에코가 그들입니다. 이들은 함께 요코하마 지하 세계에서 불거지는 무력 충돌의 소용돌이에 휩싸여 전혀 생각해 본 적 없었던 영웅적인 행보에 나서야 합니다.',
      'description2':
          '다른 게임과는 완전히 다른 역동적인 RPG 전투를 즐겨보세요. 보디가드부터 뮤지션까지 19가지의 다양한 직업을 경험하고 전장의 온갖 물건들을 무기 삼아 싸우세요. 야구방망이, 우산, 자전거, 교통표지판 등 다양한 물건으로 적들의 두개골을 박살 내세요!',
      'description3':
          '적들과의 전투에서 잠시 벗어나 쉬고 싶을 때는 동네 오락실에 들러 클래식 SEGA 게임을 즐기세요. 치열한 고카트 레이싱 게임에서 요코하마 시내를 질주하거나, 50개의 독특한 숨은 스토리를 완료하거나, 현대적인 요코하마의 도시 전경을 즐기세요. 용과 같이 7에서는 어디에서나 새로운 요소를 찾을 수 있답니다!',
      'thumbnail': 'assets/games/like_a_dragon7_title.jpeg'
    },
    {
      'background': 'assets/games/lost_judgement.jpeg',
      'title': '로스트 저지먼트: 심판받지 않은 기억',
      'subTitle': '법과 무질서',
      'subTitle2': '자유형태 전투',
      'subImg':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTgRzChw5pKwAdXsS4alnuFeP7A6TOaVwAsA&usqp=CAU',
      'subImg2':
          'https://sm.ign.com/t/ign_kr/gallery/l/lost-judgm/lost-judgment-gameplay-screenshots_9nza.600.jpg',
      'description':
          '2021년 12월 도쿄 지방 재판소. 에하라 아키히로는 만원 지하철에서 한 여성을 추행한 혐의를 받고 있습니다. 현장을 빠져나가려는 시도가 있었으나 시민의 영상이 뉴스에 퍼졌고, 여론은 최고형을 요구하고 있습니다. "사흘 전, 요코하마의 폐건물에서 시신이 발견되었습니다. 신원은 파악되었습니까?" 혼란과도 같은 그의 발언은 법정을 가로질렀습니다. 그의 피고측 변호인, 시로사키 사오리는 에헤라가 살인 혐의로 기소된 것이 아니기에 사건에 있어 중요한 점을 간과한 것이 아닌가 의심합니다. 그리고 탐정 야가미 타카유키에게 사건의 조사를 의뢰합니다. 에하라는 어떻게 한 번에 두 가지 범죄를 저질렀는가? 성추행은 단지 위장이었는가? 에하라는 사법부 전체를 상대로 게임을 한 것인가? 희생자가 나오면서 야가미는 진실을 더 깊게 파고들고, 다음의 질문에 직면합니다. 법의 수호인가, 정의의 실현인가? 단 한 번의 실수로, 괴물이 될 수 있습니다...',
      'description2':
          ' 로스트 저지먼트: 심판받지 않은 기억은 플레이어를 다시 한 번 변호사에서 길거리 싸움꾼 탐정이 된 야가미 타카유키의 경험으로 안내합니다. 파트너이자 전 야쿠자인 카이토 마사하루와 함께 범죄와 싸우는 듀오가 되어, 빈틈이 없는 알리바이가 있는 사건의 조사를 요청받습니다.  복수로 시작하는 이 이야기는, 깨진 법 체계를 이용하는 여러 희미한 가능성 그리고 그와 관련된 음모의 실타래를 풀어냅니다. 하지만 희생자들이 늘어나고 야가미가 진실에 다가가며, 그는 법을 수호하거나 정의를 수행할지 하나를 선택해야 합니다.',
      'description3':
          '야가미의 독특한 무술은 집단 기습부터 단일 대상 제압에 이르기까지 모든 상황에 대응할 수 있습니다. 학권, 호권, 그리고 새로 추가된 사권은, 그들의 에너지를 사용하여 상대의 공격을 흘리거나 반격하는 우아한 스타일입니다.',
      'thumbnail': 'assets/games/lost_judgement_title.jpeg'
    },
    {
      'background': 'assets/games/like_a_dragon7.jpeg',
      'title': '용과 같이7 빛과 어둠의 행방　International',
      'subTitle': '하류 인생에서 용이 되어 승천하기까지의 서사가 담긴 역동적인 RPG 전투',
      'subTitle2': '지하 세계에서 즐기는 여가',
      'subImg':
          'https://gmedia.playstation.com/is/image/SIEPDC/yakuza-like-a-dragon-screenshot-03-ps4-30apr20-en-us?\$1600px--t\$',
      'subImg2':
          'https://gmedia.playstation.com/is/image/SIEPDC/yakuza-like-a-dragon-screenshot-02-ps4-30apr20-en-us?\$1600px\$',
      'description':
          '도쿄의 군소 야쿠자 조직의 말단 조원인 카스가 이치반은 자신이 저지르지도 않은 범죄를 뒤집어쓰고 18년형을 대신 살게 되었습니다. 충성심을 절대 버리지 않은 그는 형을 다 마치고 사회로 돌아왔지만 자신을 기다리는 사람은 아무도 없었고, 조직 역시 자신이 가장 존경했던 사람의 손에 의해 와해되었습니다. 이치반은 패밀리가 자신을 배신한 배경을 파헤치고 인생을 되찾기 위한 여정에 나섭니다. 그런 이치반의 편에는 사회 낙오자들이 오합지졸처럼 모여 있습니다. 해고당한 경찰 아다치, 노숙자 신세가 된 전직 간호사 난바, 그리고 사명감 넘치는 화류계 여성 사에코가 그들입니다. 이들은 함께 요코하마 지하 세계에서 불거지는 무력 충돌의 소용돌이에 휩싸여 전혀 생각해 본 적 없었던 영웅적인 행보에 나서야 합니다.',
      'description2':
          '다른 게임과는 완전히 다른 역동적인 RPG 전투를 즐겨보세요. 보디가드부터 뮤지션까지 19가지의 다양한 직업을 경험하고 전장의 온갖 물건들을 무기 삼아 싸우세요. 야구방망이, 우산, 자전거, 교통표지판 등 다양한 물건으로 적들의 두개골을 박살 내세요!',
      'description3':
          '적들과의 전투에서 잠시 벗어나 쉬고 싶을 때는 동네 오락실에 들러 클래식 SEGA 게임을 즐기세요. 치열한 고카트 레이싱 게임에서 요코하마 시내를 질주하거나, 50개의 독특한 숨은 스토리를 완료하거나, 현대적인 요코하마의 도시 전경을 즐기세요. 용과 같이 7에서는 어디에서나 새로운 요소를 찾을 수 있답니다!',
      'thumbnail': 'assets/games/like_a_dragon7_title.jpeg'
    },
    {
      'background': 'assets/games/lost_judgement.jpeg',
      'title': '로스트 저지먼트: 심판받지 않은 기억',
      'subTitle': '법과 무질서',
      'subTitle2': '자유형태 전투',
      'subImg':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTgRzChw5pKwAdXsS4alnuFeP7A6TOaVwAsA&usqp=CAU',
      'subImg2':
          'https://sm.ign.com/t/ign_kr/gallery/l/lost-judgm/lost-judgment-gameplay-screenshots_9nza.600.jpg',
      'description':
          '2021년 12월 도쿄 지방 재판소. 에하라 아키히로는 만원 지하철에서 한 여성을 추행한 혐의를 받고 있습니다. 현장을 빠져나가려는 시도가 있었으나 시민의 영상이 뉴스에 퍼졌고, 여론은 최고형을 요구하고 있습니다. "사흘 전, 요코하마의 폐건물에서 시신이 발견되었습니다. 신원은 파악되었습니까?" 혼란과도 같은 그의 발언은 법정을 가로질렀습니다. 그의 피고측 변호인, 시로사키 사오리는 에헤라가 살인 혐의로 기소된 것이 아니기에 사건에 있어 중요한 점을 간과한 것이 아닌가 의심합니다. 그리고 탐정 야가미 타카유키에게 사건의 조사를 의뢰합니다. 에하라는 어떻게 한 번에 두 가지 범죄를 저질렀는가? 성추행은 단지 위장이었는가? 에하라는 사법부 전체를 상대로 게임을 한 것인가? 희생자가 나오면서 야가미는 진실을 더 깊게 파고들고, 다음의 질문에 직면합니다. 법의 수호인가, 정의의 실현인가? 단 한 번의 실수로, 괴물이 될 수 있습니다...',
      'description2':
          ' 로스트 저지먼트: 심판받지 않은 기억은 플레이어를 다시 한 번 변호사에서 길거리 싸움꾼 탐정이 된 야가미 타카유키의 경험으로 안내합니다. 파트너이자 전 야쿠자인 카이토 마사하루와 함께 범죄와 싸우는 듀오가 되어, 빈틈이 없는 알리바이가 있는 사건의 조사를 요청받습니다.  복수로 시작하는 이 이야기는, 깨진 법 체계를 이용하는 여러 희미한 가능성 그리고 그와 관련된 음모의 실타래를 풀어냅니다. 하지만 희생자들이 늘어나고 야가미가 진실에 다가가며, 그는 법을 수호하거나 정의를 수행할지 하나를 선택해야 합니다.',
      'description3':
          '야가미의 독특한 무술은 집단 기습부터 단일 대상 제압에 이르기까지 모든 상황에 대응할 수 있습니다. 학권, 호권, 그리고 새로 추가된 사권은, 그들의 에너지를 사용하여 상대의 공격을 흘리거나 반격하는 우아한 스타일입니다.',
      'thumbnail': 'assets/games/lost_judgement_title.jpeg'
    },
  ];
  Widget buildCard(Map<String, String> item, int index) {
    return GestureDetector(
      onTap: () => changeItem(index),
      child: SizedBox(
        height: MediaQuery.of(context).size.height *
            1, // Set the height of the card to be 30% of screen height
        width: MediaQuery.of(context).size.width * 1,
        child: Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.5, // Set the height of the image
                child: Image.asset(item['thumbnail']!, fit: BoxFit.cover),
              ),
              Text(item['title']!),
              const ElevatedButton(
                onPressed: null,
                child: Text('Add to Cart +'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _scrollDown() {
    setState(() {
      _showCards = true; // Set to true when scroll down button is pressed
    });

    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      scrollController.animateTo(
        MediaQuery.of(context).size.height * 2,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  void _scrollUp() {
    scrollController.animateTo(
      0, // 맨 위로 이동하도록 변경
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );

    Future.delayed(const Duration(milliseconds: 1500)).then((_) {
      setState(() {
        _showCards = false;
      });
    });
  }

  void changeItem(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          // Use Stack to keep the background image and arrow_down icon always visible
          children: <Widget>[
            BackButton(
              // Use Material's built-in BackButton
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
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
            SingleChildScrollView(
              // Allow vertical scrolling of content
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ), // Added for padding from top edge of screen
                  Container(
                    // Wrap Text with Container and give it some horizontal padding
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      items[_index]['title']!,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign
                          .center, // Center align text within its container
                    ),
                  ),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Padding(
                      // Wrap Text with Padding and give it some horizontal padding
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(items[_index]['description']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ))),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Image.network(items[_index]['subImg']!),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Text(
                    items[_index]['subTitle']!,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign
                        .center, // Center align text within its container
                  ),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(items[_index]['description2']!,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black))),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Image.network(items[_index]['subImg2']!),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Text(
                    items[_index]['subTitle2']!,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign
                        .center, // Center align text within its container
                  ),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      items[_index]['description3']!,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.5),

                  AnimatedSwitcher(
                    // Add AnimatedSwitcher
                    duration: const Duration(seconds: 1),
                    child: _showCards
                        ? SizedBox(
                            // Only show the cards when _showCards is true
                            height: MediaQuery.of(context).size.height * .6,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return buildCard(items[index], index);
                              },
                            ),
                          )
                        : Container(), // Show an empty container when _showCards is false
                  ),
                  SizedBox(height: (MediaQuery.of(context).size.height) * 0.5),
                ],
              ),
            ),
            if (!_showCards)
              Positioned(
                  // Keep arrow_down icon always visible at the bottom of screen
                  bottom: 10,
                  left: MediaQuery.of(context).size.width * .45,
                  child: IconButton(
                      iconSize: 50.0,
                      icon: const Icon(Icons.arrow_downward),
                      onPressed: _scrollDown)),
            if (_showCards)
              Positioned(
                  // Keep arrow_down icon always visible at the bottom of screen
                  top: 10,
                  left: MediaQuery.of(context).size.width * .45,
                  child: IconButton(
                      iconSize: 50.0,
                      icon: const Icon(Icons.arrow_upward),
                      onPressed: _scrollUp)),
          ],
        ),
      ),
    );
  }
}
