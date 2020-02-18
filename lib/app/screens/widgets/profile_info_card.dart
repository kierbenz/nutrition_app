import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class ProfileInfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String secondSubtitle;
  final String thirdSubtitle;
  final Text othersText;

  ProfileInfoCard({
    @required this.title,
    @required this.subtitle,
    this.secondSubtitle,
    this.thirdSubtitle,
    this.othersText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 3.0,
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(LineIcons.spoon),
              title: Text(title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(subtitle),
                  Text(secondSubtitle),
                  // Text(thirdSubtitle),
                  othersText,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
