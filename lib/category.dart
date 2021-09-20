import 'package:flutter/material.dart';
import 'categorycard.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemslist = [
      {'title': 'คำศัพท์'},
      {'title': 'สำนวน'},
      {'title': 'การออกเสียง'},
      {'title': 'เกม'},
      {'title': 'หัวข้อ'}
    ];
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
      children: [
        // for (var item in itemslist)
        //   Column(
        //     children: [
        //       Text(item['title']),
        //       Text(item['title']),
        //     ],
        //   )
        Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryCard()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 40),
                          width: 150,
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/dictionary.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'คำศัพท์',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ))),
                      onPressed: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 40),
                          width: 150,
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/ufo.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'สำนวน',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            )),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ))),
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 40),
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/speaking-1.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'การออกเสียง',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ))),
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 40),
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/puzzle.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'เกม',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ))),
                  onPressed: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(top: 40),
                      width: 150,
                      height: 150,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'หัวข้อ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [],
                    )),
              ],
            )
          ],
        ))
      ],
    )))));
  }
}
