import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutrition_app/app/shared_widgets/app_drawer.dart';
import '../../core/repositories/intake_repository.dart';
import '../../core/repositories/profile_repository.dart';
import 'widgets/gradient_appbar.dart';
import 'food_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _caloriesTaken = 0.0;
  double _recommendedCalories = 0.0;
  @override
  void initState() {
    super.initState();
    _caloriesTaken = IntakeRepository().getCaloriesTaken();
    _recommendedCalories = ProfileRepository().getRecommendedIntake();
  }
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
              _caloriesTaken.toStringAsFixed(2),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.w700,
                color: Colors.tealAccent[700],
              )
            ),
            SizedBox(height: 35.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(width: 5.0, color: Colors.blueAccent),
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                  left: BorderSide(width: 1.0, color: Colors.black12),
                  right: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text(
                    'Recommended Calorie',
                    style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    _recommendedCalories.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.teal,
                    )
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        child: Icon(Icons.add),
        backgroundColor: Colors.tealAccent[700],
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => FoodScreen()),
          );
        },
      ),
    );
  }
}
