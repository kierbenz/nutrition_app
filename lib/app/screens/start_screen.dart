import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nutrition_app/core/models/profile_model.dart';
import 'package:nutrition_app/core/repositories/food_repository.dart';
import 'package:nutrition_app/core/repositories/intake_repository.dart';
import 'package:nutrition_app/core/repositories/profile_repository.dart';
import 'package:nutrition_app/app/screens/profile_detail_screen.dart';
import 'package:nutrition_app/app/screens/home_screen.dart';


class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();

    // after everything is rendered, load the repositories
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _initRepositories();
    });
  }

  void _initRepositories() async {
    // profile
    final ProfileRepository profileRepository = ProfileRepository();
    await profileRepository.init();
    await FoodRepository().init();
    await IntakeRepository().init();

    final ProfileModel profile = profileRepository.getProfile();
    if (profile == null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => ProfileDetailScreen()),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 10.0),
            Text('Starting application'),
          ],
        ),
      )
    );
  }
}
