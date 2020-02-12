import 'package:flutter/material.dart';
import 'food_detail_card.dart';


class FoodDetailsColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FoodDetailCard(
          title: 'Calories',
          content: '188.20',
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FoodDetailCard(
                title: 'Fats',
                content: '10.00',
              ),
            ),
            Expanded(
              child: FoodDetailCard(
                title: 'Sugar',
                content: '15.00',
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FoodDetailCard(
                title: 'Carbohydrates',
                content: '50.00',
              ),
            ),
            Expanded(
              child: FoodDetailCard(
                title: 'Sodium',
                content: '10.00',
              ),
            ),
          ],
        ),
        FoodDetailCard(
          title: 'Cholesterol',
          content: '5.00',
        ),
      ],
    );
  }
}