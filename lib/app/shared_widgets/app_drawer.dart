import 'package:flutter/material.dart';

// Router configuration
final routes = [
  { 'title': 'Profile' },
  { 'title': 'History' },
  { 'title': 'Information' },
];

class AppDrawer extends StatelessWidget {
  List<Widget> _buildListTiles(context) =>
    routes.map((route) =>
      ListTile(
        title: Text(route['title']),
        onTap: () {
          print('Navigating to $route}');
        },
      )
    ).toList();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ..._buildListTiles(context),
        ],
      )
    );
  }
}