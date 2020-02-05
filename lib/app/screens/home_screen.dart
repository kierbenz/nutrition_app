import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:nutrition_app/app/shared_widgets/app_drawer.dart';
import 'widgets/gradient_appbar.dart';
import 'food_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      appBar: GradientAppBar(
        title: Text('Home'),
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 35.0),
            Text(
              'Calorie Taken',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.w500,
                color: Colors.tealAccent[700],
              ),
            ),
            Text(
              '100.00',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.w700,
                color: Colors.tealAccent[700],
              )
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text('Recommended Calorie'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        child: Container(
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => FoodScreen()),
              );
            },
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.greenAccent[400],
                Colors.tealAccent[700],
              ],
            ),
          ),
        ),
        onPressed: () { print('yeaah'); },
      ),
    );
  }
}
