import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.greenAccent[400],
              Colors.tealAccent[700],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Container(
                height: 163.0,
                child: Center(
                  child: Text(
                    'Select Food',
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
                  ),
                ),
                child: Text('list'),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
