import 'package:flutter/material.dart';

// Router configuration
final routes = [
  { 'title': 'Profile' },
  { 'title': 'History' },
  { 'title': 'Information' },
];

class AppDrawer extends StatelessWidget {
  final Color beginColor;
  final Color endColor;
  
  AppDrawer({
    @required this.beginColor, 
    @required this.endColor,
  });

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
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [beginColor, endColor],
              ),
            ),
          ),
          ..._buildListTiles(context),
        ],
      )
    );
  }
}