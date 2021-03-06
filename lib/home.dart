import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'more.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List horizontalList = [
  {'1'},
  {'2'},
  {'3'},
  {'4'},
  {'5'},
];
List<dynamic> verticalList = [
  {
    'titleTh': 'ระดับเริ่มต้น',
    'titleEng': 'Beginner',
    'index': '1',
    'image': ['beginner1.png', 'beginner2.png'],
    'description': [
      {'th': 'คุณชื่ออะไร', 'eng': 'What’s your name?'},
      {'th': 'คุณมาจากไหน', 'eng': 'Where are you from?'},
    ],
  },
  {
    'titleTh': 'ระดับกลาง',
    'titleEng': 'Intermediate',
    'index': '2',
    'image': ['intermediate1.png', 'intermediate2.png'],
    'description': [
      {'th': 'วันธรรมดาที่สำนักงาน', 'eng': 'A typical day at the office'},
      {'th': 'งานและบริษัท', 'eng': 'Describing jobs and companies'},
    ],
  },
  {
    'titleTh': 'ระดับสูง',
    'titleEng': 'Intermediate',
    'index': '3',
    'image': ['beginner2.png', 'intermediate1.png'],
    'description': [
      {'th': 'วันธรรมดาที่สำนักงาน', 'eng': 'A typical day at the office'},
      {'th': 'งานและบริษัท', 'eng': 'Describing jobs and companies'},
    ],
  },
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 20),
                  child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ), // icon is 48px widget.
                        ),
                        hintText: 'Search here...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      initialValue: '',
                      onSaved: (value) => setState(() {})),
                )),
            widgetShowItems(),
          ],
        ),
      ),
    );
  }

  Widget widgetShowItems() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  for (var index in horizontalList)
                    Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(118, 118),
                            primary: Color(0xFFC4C4C4),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            '',
                          )),
                    ),
                ],
              ),
            )),
        Column(
          children: [
            for (var items in verticalList)
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      height: 230,
                      child: Container(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                140,
                                        child: Text(
                                          items['titleTh'],
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                140,
                                        child: Text(
                                          items['titleEng'],
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  )),
                                  Container(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(80, 40),
                                            primary: Color(0xFFFFAB40),
                                            onPrimary: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ItemsPage(
                                                          titleTh:
                                                              items['titleTh'],
                                                          titleEng:
                                                              items['titleEng'],
                                                        )));
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 0, left: 0),
                                                child: Text(
                                                  'More',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.chevron_right,
                                                color: Colors.white,
                                                size: 25,
                                              ),
                                            ],
                                          )))
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          for (var items1 in items['image'])
                                            Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/' + items1,
                                                    width: 160,
                                                    height: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          for (var i = 0; i < 2; i++)
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        child: Text(
                                                          items['description']
                                                                  [i]['th']
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 160,
                                                        child: Text(
                                                          items['description']
                                                                  [i]['eng']
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff646464)),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      ),
                                                      // for (var items2
                                                      //     in items['description'])
                                                      //   Container(
                                                      //     width: 160,
                                                      //     child: Text(
                                                      //       items2['th'],
                                                      //       style: TextStyle(
                                                      //         fontSize: 12,
                                                      //       ),
                                                      //       textAlign:
                                                      //           TextAlign.start,
                                                      //     ),
                                                      //   ),
                                                      // Container(
                                                      //   width: 160,
                                                      //   child: Text(
                                                      //     items['descriptionEng1'],
                                                      //     style: TextStyle(
                                                      //       fontSize: 12,
                                                      //     ),
                                                      //     textAlign:
                                                      //         TextAlign.start,
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
          ],
        ),
      ],
    ));
  }
}
