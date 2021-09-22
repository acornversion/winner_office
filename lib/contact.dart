import 'package:flutter/material.dart';
import 'registerCredit.dart';

class Contact extends StatelessWidget {
  Contact({
    required this.title,
  });
  final title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF4F4F4),
          title: new Center(
            child: new Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black)),
          ),
          leading: BackButton(
            color: Colors.black,
          )),
      body: SingleChildScrollView(
          child: Form(
              child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.email,
                                color: Color(0xffFF8080),
                                size: 24,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Text(
                                    'Email',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Text(
                                    'edutech.innovation@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                  onPressed: () => {}),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Divider(
                height: 0,
              ),
            ),
            Container(
              child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.phone,
                                color: Color(0xff78D1CC),
                                size: 24,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Text(
                                    'Phone',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Text(
                                    '02 963 0123',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                  onPressed: () => {}),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Divider(
                height: 0,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Icon(
                      Icons.message,
                      color: Color(0xff83D981),
                      size: 24,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Text(
                          'Message',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 20, left: 50),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        decoration:
                            InputDecoration.collapsed(hintText: "Type here..."),
                        minLines: 6,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 2.0, color: const Color(0xFF929292)))),
                  Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 35),
                          primary: Color(0xffFFAB40),
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Send',
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ))),
    ));
  }
}
