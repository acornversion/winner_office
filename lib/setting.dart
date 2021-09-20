import 'package:flutter/material.dart';
import 'addCredit.dart';
import 'contact.dart';
import 'signUp.dart';
import 'changePassword.dart';

class Setting extends StatelessWidget {
  Setting({
    required this.title,
  });
  final String title;
  List<dynamic> items = [
    {
      'title': 'Personal Information',
      'image': 'vector1',
    },
    {'title': 'Credit account', 'image': 'vector2'},
    {'title': 'Change password', 'image': 'vector3'},
    {'title': 'Terms and Conditions', 'image': 'vector4'},
    {'title': 'Contact us', 'image': 'vector5'},
    {'title': 'Logout', 'image': 'vector6'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffF4F4F4),
              title: Center(
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black)),
              ),
              leading: BackButton(
                color: Colors.black,
              ),
            ),
            body: SingleChildScrollView(
                child: Center(
                    child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 108,
                          left: 95,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(30, 30),
                              primary: Color(0xFFE5E5E5),
                              onPrimary: Colors.black,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            child: Image.asset(
                              'assets/images/photo.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
                    overflow: Overflow.visible,
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        for (var item in items)
                          Container(
                              child: Column(
                            children: [
                              TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    )),
                                  ),
                                  onPressed: () {
                                    if (item['title'] ==
                                        'Personal Information') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FormPage(
                                                  title: 'Edit profile')));
                                    } else if (item['title'] ==
                                        'Credit account') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => AddCard(
                                                  title: 'Credit account')));
                                    } else if (item['title'] ==
                                        'Change password') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChangePassword()));
                                    } else if (item['title'] == 'Contact us') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Contact(
                                                  title: 'Contact us')));
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        right: 10,
                                        left: 10,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/' +
                                              item['image'] +
                                              '.png',
                                          width: 20,
                                          height: 20,
                                          fit: BoxFit.cover,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(item['title'],
                                              style: TextStyle(
                                                  color: Color(
                                                      item['title'] == 'Logout'
                                                          ? 0xffFF0000
                                                          : 0xff000000))),
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Divider(
                                  height: 0,
                                ),
                              ),
                            ],
                          )),
                      ],
                    ))
              ],
            )))));
  }
}
