import 'package:flutter/material.dart';
import 'addCredit.dart';
import 'menuSelectedItems.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemsPage extends StatelessWidget {
  ItemsPage({
    required this.titleTh,
    required this.titleEng,
  });
  final titleTh;
  final titleEng;
  List itemsList = [
    {
      'titleTh': 'คุณชื่ออะไร',
      'titleEng': 'What’s your name?',
      'status': 'unlock',
      'image': 'b1.png'
    },
    {
      'titleTh': 'คุณมาจากไหน',
      'titleEng': 'Where are you from?',
      'status': 'unlock',
      'image': 'b2.png'
    },
    {
      'titleTh': 'คุณอายุเท่าไหร่',
      'titleEng': 'How old are you',
      'status': 'lock',
      'image': 'b3.png'
    },
    {
      'titleTh': 'คุณมีพี่ชายหรือพี่สาวไหม',
      'titleEng': 'Do you have any brothersor sisters?',
      'status': 'lock',
      'image': 'b4.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  )),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 200,
                    child: Column(
                      children: [
                        Text(
                          titleEng,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          titleTh,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(children: [
                for (var items in itemsList)
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () => {
                                  if (items['status'] == 'lock')
                                    {
                                      showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              widgetShowDialog(
                                                context,
                                              )),
                                    }
                                  else
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HeaderGetTitle(
                                                      getTitleEng:
                                                          items['titleEng'],
                                                      getTitleTh:
                                                          items['titleTh'])))
                                    }
                                },
                            child: widgetRowItems(context, items)),
                      ],
                    ),
                  )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}

Widget widgetShowDialog(context) {
  return Container(
    child: AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      title: Text(
        'Unlock Lesson',
        textAlign: TextAlign.center,
      ),
      content: Text(
        'Unlock “How old are you?”',
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(80, 40),
                    primary: Color(0xff01579B),
                    side: BorderSide(color: Color(0xff01579B), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                  )),
            ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Container(
                    width: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 40),
                        primary: Color(0xFFFFAB40),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 250,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 40, right: 40, bottom: 10),
                                      child: Row(
                                        children: [
                                          Text('Google Play'),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding: EdgeInsets.all(20),
                                                child: Image.asset(
                                                  'assets/images/logo.png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 200,
                                              child: Text('Unlock Lesson'),
                                            ),
                                            Container(
                                                child: Column(
                                              children: [
                                                Text('THB 29.00'),
                                                Text(
                                                  'no tax',
                                                  textAlign: TextAlign.end,
                                                ),
                                              ],
                                            ))
                                          ],
                                        )),
                                    Divider(
                                      height: 0,
                                    ),
                                    widgetAddCredit(context),

                                    Divider(
                                      height: 0,
                                    ),
                                    // Padding(
                                    //   padding: EdgeInsets.only(
                                    //       left:
                                    //           40,
                                    //       right:
                                    //           40,
                                    //       bottom:
                                    //           10),
                                    //   // child: Text(
                                    //   //     'By tapping ‘1-tap buy’, you accept the following Google Payments Terms of Service: Privacy Notice, ข้อกำหนดในการบริการ - Android ประเทศไทย'),
                                    // ),
                                    // ElevatedButton(
                                    //   style: ElevatedButton
                                    //       .styleFrom(
                                    //     minimumSize: Size(
                                    //         80,
                                    //         40),
                                    //     primary:
                                    //         Color(0xFFFFAB40),
                                    //     onPrimary:
                                    //         Colors.black,
                                    //     shape:
                                    //         RoundedRectangleBorder(
                                    //       borderRadius:
                                    //           BorderRadius.all(Radius.circular(20)),
                                    //     ),
                                    //   ),
                                    //   child: Container(
                                    //       width: 300,
                                    //       child: Row(
                                    //         mainAxisAlignment: MainAxisAlignment.center,
                                    //         children: [
                                    //           Text(
                                    //             '1- tap buy',
                                    //             style: TextStyle(
                                    //               fontSize: 16,
                                    //               color: Colors.white,
                                    //             ),
                                    //             textAlign: TextAlign.center,
                                    //           ),
                                    //         ],
                                    //       )),
                                    //   onPressed:
                                    //       () =>
                                    //           Navigator.pop(context),
                                    // )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ))),
          ],
        )
      ],
    ),
  );
}

Widget widgetAddCredit(context) {
  return TextButton(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // addCredit == 'nocard'
          //     ? Column(
          //         children: [
          //           Text(
          //             'เพิ่มบัตรเครดิตหรือบัตรเดบิต',
          //             style: TextStyle(
          //               color: Color(0xff8D8D8D),
          //             ),
          //           ),
          //         ],
          //       )
          //     : Column(
          //         children: [
          //           Text(
          //             'เพิ่มบัตรเครดิตหรือบัตรเดบิต',
          //             style: TextStyle(
          //               color: Color(0xff8D8D8D),
          //             ),
          //           ),
          //           Icon(
          //             Icons.navigate_next_outlined,
          //             color: Colors.black,
          //             size: 24,
          //           )
          //         ],
          //       )
          Text(
            'เพิ่มบัตรเครดิตหรือบัตรเดบิต',
            style: TextStyle(
              color: Color(0xff8D8D8D),
            ),
          ),
        ]),
      ),
      onPressed: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddCard(title: 'Credit account')))
          });
}

// ส่วน icon
Widget widgetRowItems(context, items) {
  return Center(
      child: Row(
    children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Image.asset(
          'assets/images/' + items['image'],
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 210,
                      child: Text(
                        items['titleEng'],
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 210,
                      child: Text(
                        items['titleTh'],
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          iconvoiceAndiconview(context, items),
        ],
      ),
      iconLock(items),
    ],
  ));
}

// icon คู่
Widget iconvoiceAndiconview(context, items) {
  return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width - 190,
      child: Row(
        children: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color(0xff90A4AE), // Set border color
                    width: 2.0), // Set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(50)), // Set rounded corner radius
              ),
              child: Container(
                  padding: EdgeInsets.all(3),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.microphone,
                      color: Color(0xff90A4AE),
                      size: 20,
                    ),
                  ))),
          Container(
            margin: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color(0xff90A4AE), // Set border color
                  width: 2.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(50)), // Set rounded corner radius
            ),
            child: Container(
                child: Container(
                    padding: EdgeInsets.all(3),
                    child: Center(
                      child: Icon(
                        Icons.grid_view_outlined,
                        color: Color(0xff90A4AE),
                        size: 20,
                      ),
                    ))),
          ),
        ],
      ));
}

// ส่วน arrow และ lock
Widget iconLock(items) {
  return Container(
    child: Row(
      children: [
        items['status'] == 'lock'
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: items['status'] == 'lock'
                          ? Color(0xff90A4AE)
                          : Color(0xff01579B), // Set border color
                      width: 2.5), // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(50)), // Set rounded corner radius
                ),
                child: Container(
                    width: 30,
                    height: 30,
                    padding: EdgeInsets.all(3),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.lock,
                      color: Color(0xff90A4AE),
                      size: 20,
                    ))))
            : Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: items['status'] == 'lock'
                          ? Color(0xff90A4AE)
                          : Color(0xff01579B), // Set border color
                      width: 2.5), // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(50)), // Set rounded corner radius
                ),
                child: Container(
                    width: 30,
                    height: 30,
                    padding: EdgeInsets.all(3),
                    child: Center(
                        child: FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Color(0xff01579B),
                      size: 20,
                    ))))
      ],
    ),
  );
}
