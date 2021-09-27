import 'package:flutter/material.dart';

class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  _SpeakingState createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  int counter = 0;
  List<dynamic> chatList = [
    {
      'questionEng': 'What time do you normally get up?',
      'questionTh': 'ปกติคุณตื่นนอนกี่โมง',
      'type': 'chatbot',
    },
    {
      'questionEng':
          'I usually get up at six on weekdays and around 9 at weekends.',
      'questionTh':
          'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุด',
      'type': 'user',
    },
    {
      'questionEng': 'What do you usually have for breakfast?',
      'questionTh': 'ปกติคุณกินอะไรเป็นอาหารเช้า',
      'type': 'chatbot',
    },
    {
      'questionEng':
          'I usually get up at six on weekdays and around 9 at weekends.',
      'questionTh':
          'ปกติฉันตื่นนอนตอน 6 โมงเช้าในวันธรรมดาและประมาณ 9 โมงเช้าในวันหยุด',
      'type': 'user',
    },
    {
      'questionEng': 'What do you usually have for breakfast?',
      'questionTh': 'ปกติคุณกินอะไรเป็นอาหารเช้า',
      'type': 'chatbot',
    },
  ];
  bool next = false;
  int correntanswer = 2;
  bool status = false;
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
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                      child: new ListView.builder(
                          itemCount: chatList.length,
                          itemBuilder: (BuildContext ctxt, int Index) {
                            return Column(
                              children: [if (Index == 0) question()],
                            );
                          })),
                  if (!next)
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          minimumSize: Size(80, 45),
                                          primary: Color(0xff01579B),
                                          side: BorderSide(
                                              color: Color(0xff01579B),
                                              width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.play_arrow_outlined,
                                            ),
                                            Text(
                                              'ฟัง',
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(80, 80),
                                          primary: Color(0xffFFAB40),
                                          shape: CircleBorder()),
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.mic_outlined,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          minimumSize: Size(80, 45),
                                          primary: Color(0xff01579B),
                                          side: BorderSide(
                                              color: Color(0xff01579B),
                                              width: 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            next = true;
                                          });
                                        },
                                        child: Text(
                                          'ถัดไป',
                                        )),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  if (next)
                    Container(
                        width: 300,
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 10, bottom: 5),
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(300, 45),
                                            primary: Color(0xffFFAB40),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          child: Text(
                                            'เล่นซ้ำการออกเสียงของฉัน',
                                          )),
                                    ],
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            minimumSize: Size(300, 45),
                                            primary: Color(0xff01579B),
                                            side: BorderSide(
                                                color: Color(0xff01579B),
                                                width: 1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              chatList = [];
                                              next = false;
                                            });
                                          },
                                          child: Text(
                                            'เปลี่ยนบทบาท',
                                          )),
                                    ],
                                  ),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                minimumSize: Size(140, 45),
                                                primary: Color(0xff01579B),
                                                side: BorderSide(
                                                    color: Color(0xff01579B),
                                                    width: 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  next = false;
                                                });
                                              },
                                              child: Text(
                                                'ลองอีกครั้ง',
                                              )),
                                        ],
                                      ),
                                    )),
                                Container(
                                    padding:
                                        EdgeInsets.only(top: 5, bottom: 10),
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                minimumSize: Size(140, 45),
                                                primary: Color(0xff01579B),
                                                side: BorderSide(
                                                    color: Color(0xff01579B),
                                                    width: 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              child: Text(
                                                'จบ',
                                              )),
                                        ],
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ))
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
              if (items['type'] == 'chatbot')
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 270,
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
                ),
              if (items['type'] == 'user')
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 270,
                            margin:
                                EdgeInsets.only(top: 15, right: 15, left: 15),
                            padding: EdgeInsets.all(15),
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
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(30, 30),
                                      primary: Color(0xFFE0E0E0),
                                      onPrimary: Color(0xff01579B),
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
                                      primary: Color(0xFFE0E0E0),
                                      onPrimary: Color(0xff01579B),
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
                    ))
            ],
          ),
      ],
    );
  }
}
