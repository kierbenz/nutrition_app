import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class ProfileInfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String secondSubtitle;
  final String thirdSubtitle;
  final Text othersText;
  final Color color;
  final Color textColor;

  ProfileInfoCard({
    @required this.title,
    @required this.subtitle,
    this.secondSubtitle,
    this.thirdSubtitle,
    this.othersText,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 3.0,
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(LineIcons.spoon, size: 36.0),
              title: Text(title, style: TextStyle(color: textColor)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(subtitle, style: TextStyle(color: textColor)),
                  Text(secondSubtitle, style: TextStyle(color: textColor)),
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
