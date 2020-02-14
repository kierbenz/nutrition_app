import 'dart:convert';
import 'package:nutrition_app/core/models/profile_intake_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nutrition_app/core/models/intake_model.dart';


class IntakeRepository {
  SharedPreferences _prefs;
  List<IntakeModel> _intakes;

  // singleton
  IntakeRepository._internal() : _intakes = [];
  static IntakeRepository _instance = IntakeRepository._internal();
  factory IntakeRepository() => _instance;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _loadData();
  }

  Future<void> addIntake(IntakeModel intake) async {
    _intakes.add(intake);
    final List<Map> intakes = _intakes.map((intake) => intake.toJson()).toList();
    _prefs.setString('intakeData', json.encode(intakes));
  }

  double getCaloriesTaken() {
    double caloriesTaken = 0.0;
    _intakes.forEach((intake) {
      caloriesTaken = caloriesTaken + intake.totalCalories;
    });
    return caloriesTaken;
  }

  double _getRecommended(calories, category) {
    if (category == 'Fat') {
      return calories * 0.20 / 9;
    } else if (category == 'Sat') {
      return calories * 0.1;
    } else if (category == 'Trans') {
      return calories * 0.01;
    } else if (category == 'Carbs') {
      return calories * 0.5 / 4;
    } else if (category == 'Added Sugar') {
      return calories * 0.08 / 4;
    } else if (category == 'Sodium') {
      return calories * 1.15;
    } else if (category == 'Protein') {
      return calories * 0.3 / 4;
    }
    return 0.0;
  }

  ProfileIntakeModel getRecommendedIntake(calories) {
    return ProfileIntakeModel(
      fat: _getRecommended(calories, 'Fat'),
      saturatedFat: _getRecommended(calories, 'Sat'),
      transFat: _getRecommended(calories, 'Trans'),
      carbs: _getRecommended(calories, 'Carbs'),
      addedSugar: _getRecommended(calories, 'Added Sugar'),
      sodium: _getRecommended(calories, 'Sodium'),
      protein: _getRecommended(calories, 'Protein'),
    );
  }

  ProfileIntakeModel getTakenIntake() {
    double takenFat = 0.0;
    double takenSaturatedFat = 0.0;
    double takenTransFat = 0.0;
    double takenCarbs = 0.0;
    double takenAddedSugar = 0.0;
    double takenSodium = 0.0;
    double takenProtein = 0.0;
    _intakes.forEach((intake) {
      takenFat = takenFat + intake.totalFat;
      takenSaturatedFat = takenSaturatedFat + intake.saturatedFat;
      takenTransFat = takenTransFat + intake.transFat;
      takenCarbs = takenCarbs + intake.totalCarbs;
      takenAddedSugar = takenAddedSugar + intake.addedSugars;
      takenSodium = takenSodium + intake.sodium;
      takenProtein = takenProtein + intake.protein;
    });
    return ProfileIntakeModel(
      fat: takenFat,
      saturatedFat: takenSaturatedFat,
      transFat: takenTransFat,
      carbs: takenCarbs,
      addedSugar: takenAddedSugar,
      sodium: takenSodium,
      protein: takenProtein,
    );
  }

  void _loadData() {
    final intakeData = _prefs.getString('intakeData');
    if (intakeData != null) {
      List<dynamic> intakes = json.decode(intakeData);
      _intakes = intakes.map((intake) => IntakeModel.fromJson(intake)).toList();
    }
  }
}