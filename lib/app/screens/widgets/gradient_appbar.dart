import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Color beginColor;
  final Color endColor;

  final Size preferredSize;

  GradientAppBar({
    @required this.title,
    @required this.beginColor,
    @required this.endColor,
  }) : preferredSize = Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[beginColor, endColor],
          ),
        ),
      ),
    );
  }
}