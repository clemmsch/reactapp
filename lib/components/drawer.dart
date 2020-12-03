import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              leading: Icon(Icons.settings, color: Colors.blueAccent),
            ),
          ),

          // The About-Button
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
