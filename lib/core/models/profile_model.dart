import 'package:meta/meta.dart';

class ProfileModel {
  final int age;
  final String sex;
  final double height;
  final double weight;
  final String goal;
  final String activityLevel;
  
  ProfileModel({
    @required this.age,
    @required this.sex,
    @required this.height,
    @required this.weight,
    @required this.goal,
    @required this.activityLevel,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    age: json['age'],
    sex: json['sex'],
    height: json['height'],
    weight: json['weight'],
    goal: json['goal'],
    activityLevel: json['activityLevel'],
  );
  
  Map<String, dynamic> toJson() => {
    'age': age,
    'sex': sex,
    'height': height,
    'weight': weight,
    'goal': goal,
    'activityLevel': activityLevel
  };
}
