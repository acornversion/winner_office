import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signUp.dart';
import 'forgetPassword.dart';
import 'tabHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Pages'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
              ),
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
                padding: EdgeInsets.only(right: 45, left: 45),
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              initialValue: '',
                              onSaved: (value) => setState(() {})),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              initialValue: '',
                              onSaved: (value) => setState(() {})),
                        )),
                  ],
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TabHome()));
                    },
                    child: Text(
                      'Login',
                    )),
              ),
              Container(
                padding: EdgeInsets.only(right: 45, left: 45),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: TextButton(
                            child: Text('Forgot password?'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword(
                                            title: 'Forget password',
                                          )));
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.blue.shade900, // foreground
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            child: Text('Sign up'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp(
                                            title: 'Sign up',
                                          )));
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.blue.shade900, // foreground
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    padding: EdgeInsets.only(left: 10),
                    width: 110,
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
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Choose an account'),
                          content: const Text('to continue to WinnerOffice'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
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
              Container(
                  padding: EdgeInsets.only(right: 45, left: 45),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(80, 45),
                              primary: Colors.amber[800],
                              side: BorderSide(
                                  color: Colors.amber.shade800, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Skip',
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Text(
      //     'Skip',
      //   ),
      // ),
    ));
  }
}
