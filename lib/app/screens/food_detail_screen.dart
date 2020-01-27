import 'package:flutter/material.dart';
import 'widgets/food_detail_card.dart';
import 'food_screen.dart';


class FoodDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.blueAccent[400],
              Colors.tealAccent[700],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Container(
                height: 163,
                child: Center(
                  child: Text(
                    'Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    topRight: Radius.circular(63.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 63.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('Information', textAlign: TextAlign.center),
                        FoodDetailCard(
                          title: 'Calorie Size',
                          content: '188.20',
                        ),
                        FoodDetailCard(
                          title: 'Fat Size',
                          content: '10.00',
                        ),
                        FoodDetailCard(
                          title: 'Sugar Size',
                          content: '100.00',
                        ),
                        FoodDetailCard(
                          title: 'Carb Size',
                          content: '50.00',
                        ),
                        FoodDetailCard(
                          title: 'Sodium Size',
                          content: '25.00',
                        ),
                        FoodDetailCard(
                          title: 'Cholesterol Size',
                          content: '10.00',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            print('Added');
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => FoodScreen()),
            );
          }
        ),
      ],
    );
  }
}
