import 'package:flutter/material.dart';

class Speaking extends StatelessWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF4F4F4),
            title: Center(
                child: Container(
              child: SizedBox(
                width: 300,
                height: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.4,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff8F8F8F)),
                    backgroundColor: Color(0xffD6D6D6),
                  ),
                ),
              ),
            )),
            leading: BackButton(
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [],
          ))),
    );
  }
}
