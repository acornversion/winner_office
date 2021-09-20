import 'package:flutter/material.dart';
import 'registerCredit.dart';

class AddCard extends StatelessWidget {
  AddCard({
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: Text(
                    'บัตรเครดิต/บัตรเดบิตของฉัน',
                  ),
                )
              ],
            ),
            Divider(
              height: 0,
            ),
            Container(
              child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Icon(
                                Icons.add_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text(
                              'เพิ่มบัตรเครดิต/บัตรเดบิต',
                              style: TextStyle(
                                color: Color(0xff8D8D8D),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.black,
                          size: 24,
                        )
                      ]),
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterCard(
                                    title: 'บัตรเครดิต/บัตรเดบบิต')))
                      }),
            ),
            Divider(
              height: 0,
            ),
          ],
        ),
      ))),
    ));
  }
}
