import 'package:flutter/material.dart';


class FoodCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onTap;
  
  FoodCard({
    @required this.title,
    @required this.subtitle,
    this.onTap,
  });

  Widget _buildChild() {
    final child = Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.fastfood, size: 25.0),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ],
    );

    if (this.onTap != null) {
      return InkWell(
        onTap: this.onTap,
        child: child,
      );
    }

    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: StadiumBorder(
        side: BorderSide(
          color: Colors.black12,
          width: 1.0,
        ),
      ),
      child: _buildChild(),
    );
  }
}