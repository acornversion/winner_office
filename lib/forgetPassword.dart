import 'package:flutter/material.dart';
import 'main.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({
    required this.title,
  });
  final String title;

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
        leading: GestureDetector(onTap: () {}, child: Icon(null)),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Icon(
                  Icons.clear_outlined,
                  color: Color(0xff7E7E7E),
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Form(
              child: Center(
        child: (Container(
            child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 10,
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: 320,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  initialValue: '',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(320, 45),
                      primary: Colors.amber[700],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: const Text(
                                'A new password has been sent to your email.'),
                            actions: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber[700],
                                    minimumSize: Size(80, 35),
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                  ),
                                  child: const Text('OK'),
                                ),
                              )
                            ],
                          ),
                        ),
                    child: Text(
                      'Reset password',
                    )),
              ),
            ],
          ),
        ))),
      ))),
    ));
  }
}
