import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  List<dynamic> answerList = [
    {
      'time': '6 am',
      'sound': 'vector1',
    },
    {'time': '8 am', 'sound': 'vector2'},
    {'time': '9 pm', 'sound': 'vector3'},
    {'time': '10 pm', 'sound': 'vector4'},
  ];
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
                          AlwaysStoppedAnimation<Color>(Color(0xff8F8F8F)),
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
          body: SingleChildScrollView(
              child: Container(
                  child: Column(
            children: [
              question(),
              answer(answerList),
            ],
          )))),
    );
  }
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
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 275,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xff01579B),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(40, 40),
                      primary: Color(0xFFC4C4C4),
                      onPrimary: Colors.black,
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
          )
        ],
      ),
    ],
  );
}

Widget answer(answerList) {
  return Column(
    children: [
      for (var items in answerList)
        Container(
            padding: EdgeInsets.all(10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(50, 50),
                primary: Color(0xFF01579B),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              onPressed: () {},
              child: Container(width: 300, child: Text(items['time'])),
            ))
    ],
  );
}
