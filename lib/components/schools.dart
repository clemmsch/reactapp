import 'package:flutter/material.dart';

class Schools extends StatefulWidget {
  @override
  _SchoolsState createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {
  // For Debug Purposes Only...
  var schoolList = [
    {
      "name": "Gymnasium Draschestraße",
      "image": "images/debug/grg23.png",
      "city": "Wien",
    },
    {
      "name": "Debug 01",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 02",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 03",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 04",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 05",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 06",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
    {
      "name": "Debug 07",
      "image": "images/debug/grg23.png",
      "city": "Debug",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: schoolList.length,
        gridDelegate:
            // Sets the number of Columns
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleSchool(
            schoolName: schoolList[index]['name'],
            schoolImagePath: schoolList[index]['image'],
            schoolCity: schoolList[index]['city'],
          );
        });
  }
}

class SingleSchool extends StatelessWidget {
  final schoolName;
  final schoolImagePath;
  final schoolCity;

  // The Constructor
  SingleSchool({
    this.schoolName,
    this.schoolImagePath,
    this.schoolCity,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: schoolName,
        child: Material(
          //TODO: Implement Sending to correct page
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    schoolName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              child: Image.asset(
                schoolImagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
