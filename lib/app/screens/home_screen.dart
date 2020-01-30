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
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        child: Container(
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => FoodScreen()),
                  );
                },
              ),
              Card(
                child: Text('Daily Intake'),
              ),
              Card(
                child: Text('Food Intake')
              ),
              Card(
                child: Text('Recommended Intake'),
              ),
            ],
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
