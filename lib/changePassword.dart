import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
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
                              keyboardType: TextInputType.number,
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'New password',
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
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value != '12345') {
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
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
                                    );
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
