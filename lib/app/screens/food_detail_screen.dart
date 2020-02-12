import 'package:flutter/material.dart';
import 'widgets/food_details_column.dart';
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
                  padding: EdgeInsets.only(
                    top: 63.0, 
                    left: 15.0, 
                    right: 15.0
                  ),
                  child: SingleChildScrollView(
                    child: FoodDetailsColumn(),
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
