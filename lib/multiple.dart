import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int counter = 0;
  List<dynamic> answerList = [
    '6 am',
    '8 am',
    '9 pm',
    '10 pm',
  ];
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
              child: Column(
            children: [
              Expanded(
                  child: new ListView.builder(
                      itemCount: answerList.length,
                      itemBuilder: (BuildContext ctxt, int Index) {
                        return Column(
                          children: [
                            if (Index == 0) question(),
                            Container(
                                padding: EdgeInsets.all(6),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: Size(45, 45),
                                    backgroundColor: Index + 1 == counter
                                        ? status
                                            ? Color(0xff4AB71E)
                                            : Color(0xffFFAB40)
                                        : null,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    side: BorderSide(
                                        color: Index + 1 == counter
                                            ? Colors.white
                                            : Color(0xff01579B),
                                        width: 1),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      !status ? counter = Index + 1 : null;
                                    });
                                  },
                                  child: Container(
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            answerList[Index].toString(),
                                            style: TextStyle(
                                              color: Index + 1 == counter
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                  width: 1,
                                                  color: Index + 1 == counter
                                                      ? Colors.white
                                                      : Color(0xff01579B),
                                                )),
                                            child: Icon(
                                              Icons.volume_up_outlined,
                                              color: Index + 1 == counter
                                                  ? Colors.white
                                                  : Color(0xff01579B),
                                            ),
                                          ),
                                        ],
                                      )),
                                ))
                          ],
                        );
                      })),
              Container(
                  padding:
                      EdgeInsets.only(right: 40, left: 40, top: 10, bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(80, 45),
                              primary: Color(0xff01579B),
                              side: BorderSide(
                                  color: Color(0xff01579B), width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                counter == correntanswer
                                    ? status = true
                                    : status = false;
                              });
                            },
                            child: Text(
                              'ถัดไป',
                            )),
                      ],
                    ),
                  ))
            ],
          ))),
    );
  }

  Widget question() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, right: 8, left: 8),
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
                          'What time does Andrea normally get up on',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ปกติในวันเสาร์แอนเดียร์จตื่นเวลาเท่าไหร่',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(30, 30),
                            primary: Color(0xFF01579B),
                            onPrimary: Colors.white,
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
            ),
            Container(
                width: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        margin: !status ? EdgeInsets.only(bottom: 10) : null,
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
                                    '8 am',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '8 โมงเช้า',
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
                                            borderRadius: BorderRadius.circular(
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

// Widget answer(answerList, counter) {
//   return
// }

}
