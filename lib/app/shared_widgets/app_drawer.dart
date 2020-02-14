import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

// Router configuration
final routes = [
  {
    'title': 'Home',
    'icon': Icon(LineIcons.info),
    'route': '/home',
  },
  {
    'title': 'Profile',
    'icon': Icon(LineIcons.user),
    'route': '/profile',
  },
  {
    'title': 'History',
    'icon': Icon(LineIcons.history),
    'route': '/history',
  },
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
        leading: route['icon'],
        title: Text(route['title']),
        onTap: () => Navigator.pushReplacementNamed(context, route['route']),
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