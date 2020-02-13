import 'package:flutter/material.dart';


class FoodDetailsColumn extends StatelessWidget {
  FoodDetailsColumn({
    this.calories,
    this.totalFat,
    this.saturatedFat,
    this.transFat,
    this.cholesterol,
    this.sodium,
    this.totalCarbs,
    this.dietaryFiber,
    this.totalSugars,
    this.addedSugars,
    this.protein,
  });

  final String calories;
  final String totalFat;
  final String saturatedFat;
  final String transFat;
  final String cholesterol;
  final String sodium;
  final String totalCarbs;
  final String dietaryFiber;
  final String totalSugars;
  final String addedSugars;
  final String protein;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _DetailsRow(
          leftText: Text(
            'Calories',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(
            this.calories,
            style: TextStyle(fontSize: 32.0),
          ),
        ),
        Divider(
          thickness: 9.0,
          color: Colors.black,
        ),
        // Fats
        _DetailsRow(
          leftText: Text(
            'Total Fat (g)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(this.totalFat),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text('  Saturated Fat (g)'),
          rightText: Text(this.saturatedFat),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text('  Trans Fat (g)'),
          rightText: Text(this.transFat),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        // End of Fats
        _DetailsRow(
          leftText: Text(
            'Cholesterol (mg)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(this.cholesterol),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text(
            'Sodium (mg)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(this.sodium),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        // Carbs
        _DetailsRow(
          leftText: Text(
            'Total Carbs (g)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(this.totalCarbs),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text('  Dietary Fiber (g)'),
          rightText: Text(this.dietaryFiber),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text('  Total Sugars (g)'),
          rightText: Text(this.totalSugars),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text('    Added Sugars (g)'),
          rightText: Text(this.addedSugars),
        ),
        Divider(
          thickness: 1.0,
          color: Colors.black,
        ),
        _DetailsRow(
          leftText: Text(
            'Protein (g)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          rightText: Text(this.protein),
        ),
        Divider(
          thickness: 11.0,
          color: Colors.black,
        ),
        // End of Carbs
      ],
    );
  }
}


class _DetailsRow extends StatelessWidget {
  final Text leftText;
  final Text rightText;

  _DetailsRow({
    @required this.leftText,
    @required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[leftText, rightText],
    );
  }
}
