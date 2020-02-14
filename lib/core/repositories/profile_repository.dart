import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/profile_model.dart';
import '../utils.dart';

class ProfileRepository {
  SharedPreferences _prefs;
  ProfileModel _profile;

  // singleton
  ProfileRepository._internal();
  static ProfileRepository _instance = ProfileRepository._internal();
  factory ProfileRepository() => _instance;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _loadData();
  }

  ProfileModel getProfile() {
    return _profile;
  }

  double getRecommendedIntake() {
    double recommendedCalories = 0.0;
    if (_profile.sex == 'Male') {
      double w1 = 66.473;
      double w2 = 13.7516;
      double h1 = 5.0033;
      double a1 = 6.7550;
      recommendedCalories = (
          ((w1 + (w2 * _profile.weight))
          + (h1 * _profile.height)
          - (a1 * _profile.age))
          * getActivityLevelValue(_profile.activityLevel)
      ) + getGoalValue(_profile.goal);
    } else if (_profile.sex == 'Female') {
      double w1 = 655.0955;
      double w2 = 9.5634;
      double h1 = 1.8946;
      double a1 = 4.6756;
      recommendedCalories = (
          ((w1 + (w2 * _profile.weight))
              + (h1 * _profile.height)
              - (a1 * _profile.age))
              * getActivityLevelValue(_profile.activityLevel)
      ) + getGoalValue(_profile.goal);
    }
    return recommendedCalories;
  }

  Future<void> setProfile(ProfileModel profile) async {
    await _prefs.setString('profileData', json.encode(profile.toJson()));
    _profile = profile;
  }

  void _loadData() {
    final profileData = _prefs.getString('profileData');
    if (profileData != null) {
      _profile = ProfileModel.fromJson(json.decode(profileData));
    }
  }
}