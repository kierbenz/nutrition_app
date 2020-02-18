import 'package:flutter/material.dart';
import 'package:nutrition_app/app/screens/widgets/gradient_appbar.dart';
import 'package:nutrition_app/app/shared_widgets/app_drawer.dart';
import 'package:nutrition_app/core/models/profile_intake_model.dart';
import '../../core/repositories/intake_repository.dart';
import '../../core/repositories/intake_repository.dart';
import '../../core/repositories/intake_repository.dart';
import '../../core/repositories/intake_repository.dart';
import 'widgets/profile_info_card.dart';


final info = [
  'Fat',
  'Saturated',
  'Transfat',
  'Carbohydrates',
  'Added Sugar',
  'Sodium',
  'Protein',
];


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double _caloriesTaken;
  ProfileIntakeModel _recommended;
  ProfileIntakeModel _taken;

  @override
  void initState() {
    super.initState();
    _caloriesTaken = IntakeRepository().getCaloriesTaken();
    _recommended = IntakeRepository().getRecommendedIntake(_caloriesTaken);
    _taken = IntakeRepository().getTakenIntake();
  }

  Text _getSurplusDeficitText(double recommended, double taken) {
    final double intakeDifference = recommended - taken;
    if (intakeDifference < 0) {
      return Text(
        'Deficit: ${intakeDifference.toStringAsFixed(2)}',
        style: TextStyle(color: Colors.red),
      );
    }
    return Text(
      'Surplus: ${intakeDifference.toStringAsFixed(2)}',
      style: TextStyle(color: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      appBar: GradientAppBar(
        title: Text('Profile Intake'),
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfileInfoCard(
              title: 'Fat (g)',
              subtitle: 'Recommended: ${_recommended.fat.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.fat.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.fat, _taken.fat),
            ),
            ProfileInfoCard(
              title: 'Saturated Fat (mg)',
              subtitle: 'Recommended: ${_recommended.saturatedFat.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.saturatedFat.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.saturatedFat, _taken.saturatedFat),
            ),
            ProfileInfoCard(
              title: 'Trans Fat (mg)',
              subtitle: 'Recommended: ${_recommended.transFat.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.transFat.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.transFat, _taken.transFat),
            ),
            ProfileInfoCard(
              title: 'Carbohydrates (g)',
              subtitle: 'Recommended: ${_recommended.carbs.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.carbs.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.carbs, _taken.carbs),
            ),
            ProfileInfoCard(
              title: 'Added Sugar (g)',
              subtitle: 'Recommended: ${_recommended.addedSugar.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.addedSugar.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.addedSugar, _taken.addedSugar),
            ),
            ProfileInfoCard(
              title: 'Sodium (mg)',
              subtitle: 'Recommended: ${_recommended.sodium.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.sodium.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.sodium, _taken.sodium),
            ),
            ProfileInfoCard(
              title: 'Protein (g)',
              subtitle: 'Recommended: ${_recommended.protein.toStringAsFixed(2)}',
              secondSubtitle: 'Current: ${_taken.protein.toStringAsFixed(2)}',
              othersText: _getSurplusDeficitText(_recommended.protein, _taken.protein),
            ),
          ],
        ),
      ),
    );
  }
}
