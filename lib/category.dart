import 'package:flutter/material.dart';
import 'categorycard.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemslist = ['คำศัพท์', 'สำนวน', 'การออกเสียง', 'เกม', 'หัวข้อ'];
    List imagelist = [
      'dictionary.png',
      'ufo.png',
      'speaking-1.png',
      'puzzle.png',
      'logo.png'
    ];
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: GridView.count(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      crossAxisCount: 2,
      children: [
        for (var i = 0; i < itemslist.length; i++)
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryCard()));
              },
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/' + imagelist[i],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      itemslist[i].toString(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  )
                ],
              )),
            ),
          ),
      ],
    ))));
  }
}
