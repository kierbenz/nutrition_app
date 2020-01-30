import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class ProfileInfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  ProfileInfoCard({
    @required this.title,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(LineIcons.spoon),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ],
      ),
    );
  }
}
