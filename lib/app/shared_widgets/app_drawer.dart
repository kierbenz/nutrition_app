import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nutrition_app/app/screens/profile_screen.dart';
import 'package:nutrition_app/app/screens/history_screen.dart';

// Router configuration
final routes = [
  {
    'title': 'Profile',
    'icon': Icon(LineIcons.user),
    'route': MaterialPageRoute(
      builder: (BuildContext context) => ProfileScreen(),
    ),
  },
  {
    'title': 'History',
    'icon': Icon(LineIcons.history),
    'route': MaterialPageRoute(
      builder: (BuildContext context) => HistoryScreen(),
    ),
  },
  {
    'title': 'Information',
    'icon': Icon(LineIcons.info),
    'route': MaterialPageRoute(
      builder: (BuildContext context) => ProfileScreen(),
    ),
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
        onTap: () => Navigator.pushReplacement(context, route['route']),
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