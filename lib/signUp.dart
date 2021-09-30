import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dateWidget.dart';
import 'notify.dart';

class SignUp extends StatelessWidget {
  SignUp({
    required this.title,
  });
  final title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: Center(
          child: Form(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormPage(
                                title: 'Forget password',
                              )));
                },
                child: Text(
                  'Sign up with email',
                )),
          ),
          Container(
            width: 320,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: Text('Log in instead'),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ForgetPassword(
                    //               title: 'Log in instead',
                    //             )));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.blue.shade900, // foreground
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 110,
                padding: EdgeInsets.only(right: 10),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Text(
                'or sign in with',
              ),
              Container(
                width: 110,
                padding: EdgeInsets.only(left: 10),
                child: Divider(
                  thickness: 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ],
      ))),
    ));
  }
}

class FormPage extends StatefulWidget {
  FormPage({
    required this.title,
  });
  final String title;

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String selectedGender = 'Male';
  void _onRadiobuttonChange(value) {
    setState(() {
      value == 'Male' ? selectedGender = value : selectedGender = value;
    });
  }

  dynamic getBoolNumber = [];
  dynamic getData = '';
  String password = '';
  bool isPwd = false;
  bool isCheckNumber = false;
  bool isCheckText = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffF4F4F4),
              title: new Center(
                child: new Text('Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black)),
              ),
              leading: BackButton(
                color: Colors.black,
              ),
            ),
            body: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) => _onRadiobuttonChange(value)),
                      Text('Male'),
                      Radio(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) => _onRadiobuttonChange(value)),
                      Text('Female'),
                      Radio(
                          value: 'Not specified',
                          groupValue: selectedGender,
                          onChanged: (value) => _onRadiobuttonChange(value)),
                      Text('Not specified'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 45, left: 45),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: 'Given name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          initialValue: '',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Surname',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          initialValue: '',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 0, bottom: 10),
                        child: DatePickerWidget(
                          labelText: 'Date of birth (DD/MM/YYYY)',
                          pickerType: 'regis',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          initialValue: '',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          obscureText: isPwd ? false : true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              suffixIcon: (TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: Size(50, 45),
                                  primary: Color(0xff909090),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPwd = !isPwd;
                                  });
                                },
                                child: Icon(
                                  password.length > 0
                                      ? isPwd
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined
                                      : null,
                                ),
                              ))),
                          onChanged: (value) {
                            setState(() {
                              password = value;
                              if (password.length > 0) {
                                value.replaceAll(RegExp(r'[0-9]'), '').length >
                                        0
                                    ? isCheckText = true
                                    : isCheckText = false;
                                value
                                            .replaceAll(RegExp(r'[a-zA-Z]'), '')
                                            .length >
                                        0
                                    ? isCheckNumber = true
                                    : isCheckNumber = false;
                              }
                            });
                          },
                          initialValue: '',
                        ),
                      ),
                      Container(
                          child: Column(
                        children: [
                          if (password.length > 0)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 10),
                                      child: Icon(
                                        password.length < 9
                                            ? Icons.clear_outlined
                                            : Icons.check_outlined,
                                        color: password.length < 9
                                            ? Colors.red
                                            : Colors.green,
                                      ),
                                    ),
                                    Text('8-16 characters',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 10),
                                      child: Icon(
                                        !isCheckText
                                            ? Icons.clear_outlined
                                            : Icons.check_outlined,
                                        color: !isCheckText
                                            ? Colors.red
                                            : Colors.green,
                                      ),
                                    ),
                                    Text(
                                        'A lowercase or uppercase letter (a-z; A-Z)',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 10),
                                      child: Icon(
                                        !isCheckNumber
                                            ? Icons.clear_outlined
                                            : Icons.check_outlined,
                                        color: !isCheckNumber
                                            ? Colors.red
                                            : Colors.green,
                                      ),
                                    ),
                                    Text('A number (0-9)',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ],
                            )
                        ],
                      )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          initialValue: '',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(320, 45),
                              primary: Colors.amber[700],
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () {
                              dialogNotify(context,
                                  'Your profile information updated successfully');
                            },
                            child: Text(
                              'Sign up',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
