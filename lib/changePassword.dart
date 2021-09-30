import 'package:flutter/material.dart';
import 'notify.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  String password = '';
  bool isCheckText = false;
  bool isCheckNumber = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffF4F4F4),
              title: new Center(
                child: new Text('Change password',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black)),
              ),
              leading: BackButton(
                color: Colors.black,
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 45, left: 45),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 30, bottom: 10),
                            child: TextFormField(
                              //เช็คค่าว่าตรงกับค่าเก่าไหม
                              autofocus: true,
                              obscureText: true,

                              validator: (value) {
                                if (value != '1234') {
                                  return 'Incorrect password';
                                }
                              },
                              decoration: InputDecoration(
                                labelText: 'Current password',
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
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'New password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                  if (password.length > 0) {
                                    value
                                                .replaceAll(
                                                    RegExp(r'[0-9]'), '')
                                                .length >
                                            0
                                        ? isCheckText = true
                                        : isCheckText = false;
                                    value
                                                .replaceAll(
                                                    RegExp(r'[a-zA-Z]'), '')
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
                                          padding: EdgeInsets.only(
                                              left: 20, right: 10),
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
                                          padding: EdgeInsets.only(
                                              left: 20, right: 10),
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
                                          padding: EdgeInsets.only(
                                              left: 20, right: 10),
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
                              obscureText: true,
                              validator: (value) {
                                if (value != 'uu1234567') {
                                  return 'Incorrect password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'Confirm password',
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
                                  primary: Color(0xffFFAB40),
                                  onPrimary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                ),
                                onPressed: () {
                                  //กดแล้วเช็คว่าค่าที่ได้มามันถูกต้องไหม
                                  if (_formKey.currentState!.validate()) {
                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //   const SnackBar(
                                    //       content: Text('Processing Data')),
                                    // );
                                    dialogNotify(context,
                                        'Password was successfully changed ');
                                  }
                                },
                                child: Text(
                                  'Save',
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            )));
  }
}
