import 'package:meta/meta.dart';

class ProfileIntakeModel {
  final double fat;
  final double saturatedFat;
  final double transFat;
  final double carbs;
  final double addedSugar;
  final double sodium;
  final double protein;
  ProfileIntakeModel({
    @required this.fat,
    @required this.saturatedFat,
    @required this.transFat,
    @required this.carbs,
    @required this.addedSugar,
    @required this.sodium,
    @required this.protein,
  });
}
