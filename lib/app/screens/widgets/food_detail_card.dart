import 'package:flutter/material.dart';


class FoodDetailCard extends StatelessWidget {
  final String title;
  final String content;
  
  FoodDetailCard({
    @required this.title,
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text(this.title),
            Text(this.content),
          ],
        ),
      ),
    );
  }
}
