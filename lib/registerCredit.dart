import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dateWidget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterCard extends StatelessWidget {
  RegisterCard({
    required this.title,
  });
  final title;
  var maskFormatter = new MaskTextInputFormatter(
      mask: '#### #### #### ####', filter: {"#": RegExp(r'[0-9]')});
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
                padding: EdgeInsets.only(right: 45, left: 45),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Name on card',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        initialValue: '',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/images/visa.png',
                                width: 50,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/images/mastercard.png',
                                width: 50,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/images/jcb.png',
                                width: 50,
                                height: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 10, bottom: 0),
                      child: TextFormField(
                        inputFormatters: [maskFormatter],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Card number',
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
                        labelText: 'Expiry date (MM/YY)',
                        pickerType: 'credit',
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(50, 45),
                              primary: Color(0xff909090),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                // title: const Text('Choose an account'),
                                content: Image.asset(
                                  'assets/images/credit.png',
                                  fit: BoxFit.fill,
                                ),
                                actions: <Widget>[
                                  Container(
                                      child: Center(
                                    child: Container(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(80, 35),
                                            primary: Colors.amber[700],
                                            onPrimary: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                            ),
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text(
                                            'OK',
                                          )),
                                    ),
                                  ))
                                ],
                              ),
                            ),
                            child: Icon(
                              Icons.help_outlined,
                            ),
                          ),
                          labelText: 'Security code',
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'ZIP/Postal code',
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
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Save',
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ))),
      ))),
    ));
  }
}
