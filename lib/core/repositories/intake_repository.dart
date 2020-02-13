import 'dart:convert';
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

  void _loadData() {
    final intakeData = _prefs.getString('intakeData');
    if (intakeData != null) {
      List<dynamic> intakes = json.decode(intakeData);
      _intakes = intakes.map((intake) => IntakeModel.fromJson(intake)).toList();
    }
  }
}