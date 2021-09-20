import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
      children: [
        Container(
          height: 200,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padding: EdgeInsets.all(15),
                height: 200,
                child: Column(
                  children: [
                    Text(
                      'คำศัพท์',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Vocabulary',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                      child: Text(
                    'ชีวิตประจำวัน',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                      child: Text(
                    'วัยรุ่น',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                      child: Text(
                    'Toeic',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                      child: Text(
                    'Movie',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
        Container(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 60),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    child: Text(
                      '20 คำศัพท์ ในชีวิตประจำวัน',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 60),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    child: Text(
                      'คำศัพท์เครื่องใช้ในครัว',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 60),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: Container(
                    width: MediaQuery.of(context).size.width - 65,
                    child: Text(
                      'คำศัพท์แชทภาษาวัยรุ่น',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ),
            )
          ],
        ))
      ],
    )))));
  }
}
