import 'package:flutter/material.dart';
import 'speaking.dart';
import 'multiple.dart';

class HeaderGetTitle extends StatelessWidget {
  HeaderGetTitle({
    required this.getTitleEng,
    required this.getTitleTh,
  });
  final getTitleEng;
  final getTitleTh;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(
        children: [
          Container(
            height: 200,
            child: Row(
              children: [
                Container(
                    child: Column(
                  children: [
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ),
                  ],
                )),
                Container(
                    width: MediaQuery.of(context).size.width - 65,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 80,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  child: Text(
                                    getTitleEng,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  child: Text(
                                    getTitleTh,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            )),
                      ],
                    )),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    child: Container(
                      child: Column(
                        children: [
                          TextButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/expression.png',
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              )),
                          Text(
                            'Expression',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Column(
                            children: [
                              Container(
                                child: TextButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Speaking()));
                                    },
                                    child: Image.asset(
                                      'assets/images/speaking.png',
                                      width: 125,
                                      height: 125,
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              Text(
                                'Speaking',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              Container(
                                child: TextButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Multiple()));
                                    },
                                    child: Image.asset(
                                      'assets/images/practice.png',
                                      width: 125,
                                      height: 125,
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              Text(
                                'Practice',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )),
                        ],
                      ))
                ],
              ))
        ],
      ))),
    );
  }
}
