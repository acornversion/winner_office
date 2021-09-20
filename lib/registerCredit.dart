import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterCard extends StatelessWidget {
  RegisterCard({
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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Expiry date (MM/YY)',
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
                        decoration: InputDecoration(
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
