import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Create the App-Bar
      appBar: new AppBar(
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // Header of the Drawer (Login Info & Profile Picture)
            new UserAccountsDrawerHeader(
              accountName: Text('Clemens Schuetz'),
              accountEmail: Text('panemlp@gmx.net'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            // The body of the drawer

            // The Home-Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),

            // The MyAccount-Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),

            // The Categories Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),

            // The Bookmarks Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Bookmarks'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            // A Divider
            const Divider(),

            // The Settings Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            // The About-Button
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
