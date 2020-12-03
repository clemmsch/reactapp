import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Public',
          ),
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Private',
          ),
          Category(
            imagePath: 'images/categories/Bilingual.png',
            categoryName: 'Bilingual',
          ),
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Modular',
          ),
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Public',
          ),
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Public',
          ),
          Category(
            imagePath: 'images/categories/Lock.png',
            categoryName: 'Public',
          ),
        ],
      ),
    );
  }
}

// An Widget for every category
class Category extends StatelessWidget {
  final String imagePath;
  final String categoryName;

  // The Constructor
  Category({
    this.imagePath,
    this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              imagePath,
              width: 100.0,
              height: 60.0,
              color: Colors.red,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(categoryName,
                  style: new TextStyle(
                    fontSize: 12.0,
                  )),
              padding: EdgeInsets.only(top: 3.0),
            ),
          ),
        ),
      ),
    );
  }
}
