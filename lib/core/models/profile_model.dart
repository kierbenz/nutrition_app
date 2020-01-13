import 'package:meta/meta.dart';

class ProfileModel {
  final int age;
  final String sex;
  final double height;
  final double weight;
  final double activityLevel;
  
  ProfileModel({
    @required this.age,
    @required this.sex,
    @required this.height,
    @required this.weight,
    @required this.activityLevel,
  });
  
}
