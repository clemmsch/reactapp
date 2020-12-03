import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Importing the components
import 'package:application/components/horizontalListView.dart';
import 'package:application/components/drawer.dart';
import 'package:application/components/schools.dart';

// The Main Function of the application (Runs the HomePage)
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// The Renderer of the HomePage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// The State of the HomePage
class _HomePageState extends State<HomePage> {
  // VARIABLES
  final TextStyle headerStyle =
      new TextStyle(color: Colors.black, fontSize: 16);

  // THE MAIN
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/c1.jpg'),
          AssetImage('img/c2.jpg'),
          AssetImage('img/c3.jpg'),
          AssetImage('img/c4.jpg'),
          AssetImage('img/c7.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      // Create the App-Bar
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Visionizer'),
        centerTitle: true,
        actions: <Widget>[
          // Search-Button
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

          // Switch to Review-Mode-Button
          new IconButton(
              icon: Icon(
                Icons.star_border_outlined,
                color: Colors.white,
              ),
              onPressed: () {}),

          // For Debug only
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),

      // Create a new Drawer
      drawer: AppDrawer(),

      // The Body
      body: new ListView(
        children: <Widget>[
          // Padding the Widgets
          new Padding(
              padding: const EdgeInsets.all(8.0),
              // Setting the header "Categories"
              child: new Text(
                'Categories',
                style: headerStyle,
                textAlign: TextAlign.center,
              )),
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(15.0),
            // Setting the header "Recent", this currently only shows the recent
            child: new Text('Recent',
                style: headerStyle, textAlign: TextAlign.center),
          ),

          // The Grid View
          Container(
            height: 320,
            child: Schools(),
          ),
        ],
      ),
    );
  }
}
