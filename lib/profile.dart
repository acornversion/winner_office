import 'package:flutter/material.dart';
import 'setting.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

@override
List<dynamic> itemsList = [
  {
    'title': 'นักล่าดาว',
    'description': 'รับดาว 500 ดวง',
    'value': 100,
    'total': 500
  },
  {
    'title': 'ผู้กล้าหาญ',
    'description': 'เข้าเรียนติดต่อกัน 10 วัน',
    'value': 5,
    'total': 10
  },
  {
    'title': 'ราชาแบบฝึกหัด',
    'description': 'ทำแบบฝึกหัดจำนวน 20 ครั้ง',
    'value': 4,
    'total': 20
  },
  {
    'title': 'ราชาการพูด',
    'description': 'สำเร็จโหมดการพูดจำนวน 10 ตอน',
    'value': 2,
    'total': 20
  }
];
List<dynamic> itemsRankingList = [
  {'name': 'A', 'star': 20},
  {'name': 'B', 'star': 30},
  {'name': 'C', 'star': 60},
  {'name': 'D', 'star': 50},
  {'name': 'E', 'star': 20},
  {'name': 'F', 'star': 10},
  {'name': 'G', 'star': 30},
  {'name': 'H', 'star': 40},
];
void main() {
  itemsRankingList.sort((a, b) => b["star"].compareTo(a["star"]));
  print('Low to hight in price: $itemsRankingList');
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Pajaree Kittisupaluck',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: TextButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Setting(
                                                            title: 'Setting')));
                                          },
                                          child: Icon(
                                            Icons.settings,
                                            color: Color(0xffFFAB40),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width - 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              'Today',
                                              style: TextStyle(
                                                color: Color(0xff8F8F8F),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '40',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Text(
                                                'min',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              'Studied for',
                                              style: TextStyle(
                                                color: Color(0xff8F8F8F),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '3',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Text(
                                                'day',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              'Total time',
                                              style: TextStyle(
                                                color: Color(0xff8F8F8F),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '2',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Text(
                                                'h',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                '30',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Text(
                                                'min',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text('จำนวนดาวที่มีอยู่',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFFAB40),
                                  size: 24,
                                ),
                                Text('1,223',
                                    style: TextStyle(color: Colors.black)),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width - 40,
                            child: Text('ความสำเร็จของฉัน',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Container(
                              child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    for (var items in itemsList)
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  minimumSize: Size(50, 50),
                                                  primary: Color(0xFFC4C4C4),
                                                  onPrimary: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '',
                                                )),
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              110,
                                                      child: Text(
                                                        items['title'],
                                                      )),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              110,
                                                          child: Text(
                                                            items[
                                                                'description'],
                                                          )),
                                                    ],
                                                  ),
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width -
                                                              110,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: 235,
                                                            height: 10,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          10)),
                                                              child:
                                                                  LinearProgressIndicator(
                                                                value: items[
                                                                        'value'] /
                                                                    items[
                                                                        'total'],
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                            Color>(
                                                                        Color(
                                                                            0xff8F8F8F)),
                                                                backgroundColor:
                                                                    Color(
                                                                        0xffD6D6D6),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 10),
                                                            child: Column(
                                                              children: [
                                                                Text(items['value'] >=
                                                                        100
                                                                    ? '1k' +
                                                                        '/' +
                                                                        '5K'
                                                                    : items['value']
                                                                            .toString() +
                                                                        '/' +
                                                                        items['total']
                                                                            .toString())
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ))
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ],
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Text('บรอนซ์ลีก',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Text('สิ้นสุดลีก : 4 วัน 16 ชม.',
                                        style: TextStyle(color: Colors.black)),
                                  )
                                ],
                              )),
                            ],
                          ),
                          Container(
                              child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    for (var items in itemsRankingList)
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 15, right: 5),
                                            child: Text('1'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  minimumSize: Size(30, 30),
                                                  primary: Color(0xFFE5E5E5),
                                                  onPrimary: Colors.black,
                                                  shape: CircleBorder(),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  '',
                                                )),
                                          ),
                                          Container(
                                            width: 290,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    child: Text(
                                                  items['name'],
                                                )),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0xffFFAB40),
                                                      size: 24,
                                                    ),
                                                    Text(
                                                        items['star']
                                                            .toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black)),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
