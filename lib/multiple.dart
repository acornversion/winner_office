import 'dart:developer';

import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  // bool _isPressed = false;
  // void _myCallback() {
  //   setState(() {
  //     _isPressed = true;
  //   });
  // }

  int counter = 0;
  int counterPage = 1;
  List<dynamic> answerList = [
    '6 am',
    '8 am',
    '9 pm',
    '10 pm',
  ];

  List<dynamic> chatList = [
    {
      'questionEng': 'What time does Andrea normally get up on',
      'questionTh': 'ปกติในวันเสาร์แอนเดียร์จตื่นเวลาเท่าไหร่',
      'type': 'question',
    },
    {
      'questionEng': '9 am',
      'questionTh': '9 โมงเช้า',
      'type': 'answer',
    },
  ];

  List<dynamic> getAnswer = [];
  List<dynamic> wordOrder = [
    'I',
    'usually',
    'weekends.',
    'at six',
    'weekdays',
    'around 9',
    'get up',
    'and',
    'at',
    'on',
  ];
  String answer =
      'I usually get up at six on weekdays and around 9 at weekends.';
  List<dynamic> answerData = [
    'I',
    'usually',
    'get up',
    'at six',
    'on',
    'weekdays',
    'and',
    'around 9',
    'at',
    'weekends.',
  ];
  List<dynamic> getBool = [];
  int correntanswer = 2;
  bool status = false;
  int checkAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF4F4F4),
            title: Center(
              child: Container(
                child: SizedBox(
                  width: 300,
                  height: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff90A4AE)),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
              ),
            ),
            leading: BackButton(
              color: Colors.black,
            ),
          ),
          body: Container(
              child: Column(
            children: [
              Expanded(
                  child: new ListView.builder(
                      itemCount: answerList.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Column(
                          children: [
                            if (index == 0 && counterPage != 3) question(),
                            if (counterPage == 1) multiple(index),
                            if (counterPage == 2 && index == 0)
                              Column(
                                children: [getboxItemslist(), boxItemsList()],
                              ),
                            if (counterPage == 3)
                              Column(
                                children: [
                                  if (index == 0)
                                    Container(
                                      padding: EdgeInsets.all(33),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(100, 100),
                                            primary: Color(0xFF01579B),
                                            onPrimary: Colors.white,
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(0)),
                                        onPressed: () {},
                                        child: Icon(Icons.volume_up_outlined,
                                            size: 70),
                                      ),
                                    ),
                                  multiple(index),
                                ],
                              )
                          ],
                        );
                      })),
              next()
            ],
          ))),
    );
  }

  Widget question() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var items in chatList)
          Column(
            children: [
              if (items['type'] == 'question')
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 15, right: 8, left: 8),
                              child: Icon(
                                Icons.account_circle_outlined,
                                size: 40,
                                color: Color(0xFFAAAAAA),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 280,
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Color(0xff01579B),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items['questionEng'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  items['questionTh'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      primary: Color(0xFF01579B),
                                      onPrimary: Colors.white,
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(0)),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.volume_up_outlined,
                                  ),
                                ),
                              ),
                              Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      primary: Color(0xFF01579B),
                                      onPrimary: Colors.white,
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(0)),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.record_voice_over_outlined,
                                    size: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if (items['type'] == 'answer')
                Container(
                    padding: EdgeInsets.only(left: 15, right: 20, top: 15),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(15),
                            margin:
                                !status ? EdgeInsets.only(bottom: 10) : null,
                            decoration: const BoxDecoration(
                              color: Color(0xffE0E0E0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (status)
                                  Container(
                                      child: Column(
                                    children: [
                                      Text(
                                        items['questionEng'],
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        items['questionTh'],
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  )),
                                if (!status)
                                  Container(
                                    width: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        for (var i = 0; i < 3; i++)
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10), // radius of 10
                                                color: Color(
                                                    0xff616161) // green as background color
                                                ),
                                            padding: EdgeInsets.all(10),
                                            width: 10,
                                            height: 10,
                                          ),
                                      ],
                                    ),
                                  )
                              ],
                            )),
                        if (status)
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      primary: Color(0xFFE0E0E0),
                                      onPrimary: Color(0xff01579B),
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.volume_up_outlined,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ],
                    ))
            ],
          ),
      ],
    );
  }

  Widget multiple(index) {
    return Container(
        padding: EdgeInsets.all(6),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: Size(45, 45),
            backgroundColor: index + 1 == counter
                ? status
                    ? Color(0xff4AB71E)
                    : Color(0xffFFAB40)
                : null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            side: BorderSide(
                color: index + 1 == counter ? Colors.white : Color(0xff01579B),
                width: 1),
          ),
          onPressed: () {
            setState(() {
              !status ? counter = index + 1 : null;
            });
          },
          child: Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    answerList[index].toString(),
                    style: TextStyle(
                      color: index + 1 == counter ? Colors.white : Colors.black,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: counterPage != 3
                            ? Border.all(
                                width: 1,
                                color: index + 1 == counter
                                    ? Colors.white
                                    : Color(0xff01579B),
                              )
                            : null,
                      ),
                      child: counterPage != 3
                          ? Icon(Icons.volume_up_outlined,
                              color: index + 1 == counter
                                  ? Colors.white
                                  : Color(0xff01579B))
                          : null),
                ],
              )),
        ));
  }

// Widget answer(answerList, counter) {
//   return
// }
  Widget getboxItemslist() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 10, right: 5, left: 5),
        width: MediaQuery.of(context).size.width - 30,
        constraints: BoxConstraints(maxHeight: double.infinity, minHeight: 200),
        decoration: const BoxDecoration(
          color: Color(0xffE0E0E0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Wrap(
          children: [
            for (var i = 0; i < getAnswer.length; i++)
              Column(
                children: [
                  Stack(alignment: AlignmentDirectional.topEnd, children: [
                    Positioned(
                      child: Container(
                          padding: EdgeInsets.only(right: 5, left: 5, top: 5),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(0, 40),
                                primary: getBool.length == 0
                                    ? Color(0xff90A4AE)
                                    : getBool[i]
                                        ? Color(0xff4AB71E)
                                        : Colors.red,
                                onPrimary: Color(0xff01579B),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                              child: Text(
                                getAnswer[i],
                                style: TextStyle(
                                  color: getBool.length == 0
                                      ? Colors.black
                                      : getBool[i]
                                          ? Colors.white
                                          : Colors.white,
                                ),
                              ))),
                    ),
                    Positioned(
                        width: 20,
                        height: 20,
                        bottom: 32,
                        right: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(0),
                            minimumSize: Size(0, 0),
                            primary: Color(0xFF757575),
                            shape: CircleBorder(),
                          ),
                          onPressed: () {
                            setState(() {
                              wordOrder.add(getAnswer[i]);
                              getAnswer.removeAt(i);
                              getBool = [];
                            });
                          },
                          child: Icon(
                            Icons.clear_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        )),
                  ]),
                ],
              )
          ],
        ));
  }

  Widget boxItemsList() {
    return Container(
      padding: EdgeInsets.only(right: 2, left: 2, top: 20, bottom: 20),
      child: Wrap(
        children: [
          for (var i = 0; i < wordOrder.length; i++)
            Container(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 40),
                      primary: Color(0xFF90A4AE),
                      onPrimary: Color(0xff01579B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (!getAnswer.contains(wordOrder[i])) {
                          getAnswer.add(wordOrder[i]);
                          wordOrder.removeAt(i);
                          getBool = [];
                        }
                      });
                    },
                    child: Text(
                      wordOrder[i],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )))
        ],
      ),
    );
  }

  Widget next() {
    return Container(
        padding: EdgeInsets.only(right: 40, left: 40, top: 10, bottom: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(80, 45),
                    primary: Color(0xff01579B),
                    side: BorderSide(color: Color(0xff01579B), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (counterPage == 1) {
                        counter == correntanswer
                            ? status = true
                            : status = false;
                        status && counterPage == 1 ? checkAnswer++ : null;
                        checkAnswer == 2 && counterPage == 1
                            ? counterPage++
                            : null;
                      }

                      if (getAnswer.length == 10 && counterPage == 2) {
                        for (var i = 0; i < answerData.length; i++) {
                          answerData[i] == getAnswer[i]
                              ? getBool.add(true)
                              : getBool.add(false);
                        }

                        counter = 0;
                        correntanswer = 0;
                        checkAnswer++;
                        checkAnswer == 4 && counterPage == 2
                            ? counterPage++
                            : null;
                      }
                      print(checkAnswer);
                      if (counterPage == 2) {
                        chatList = [
                          {
                            'questionEng': 'What time do you normally get up?',
                            'questionTh': 'ปกติคุณตื่นนอนกี่โมง',
                            'type': 'question',
                          },
                          {
                            'questionEng':
                                'I usually get up at six on weekdays and around 9 at weekends.',
                            'questionTh':
                                'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุดด',
                            'type': 'answer',
                          },
                        ];
                        // getAnswer = answer.split(" ");
                        // print(getAnswer);
                        // print(box1.join());
                        // print(getAnswer);
                        // print(box1);
                        // for (var i = 0; i < box1.length; i++) {
                        //   print(getAnswer.contains(box1[i]));
                        // }

                        // print(getBool);
                      }
                      if (counterPage == 3) {
                        status = false;
                        answerList = ['Usually', 'Never', 'Sometime', 'Rarely'];
                      }
                    });
                  },
                  child: Text(
                    'ถัดไป',
                  )),
            ],
          ),
        ));
  }
}

Widget multipleAnswerSound(index) {
  return Container(child: Text('3'));
}
