import 'package:meta/meta.dart';

class IntakeModel {
  final String foodName;
  final double calorieSize;
  final double fatSize;
  final double sugarSize;
  final double carbSize;
  final double sodiumSize;
  final double cholesterolSize;
  final DateTime takenAt;
  
  IntakeModel({
    @required this.foodName,
    @required this.calorieSize,
    @required this.fatSize,
    @required this.sugarSize,
    @required this.carbSize,
    @required this.sodiumSize,
    @required this.cholesterolSize,
    @required this.takenAt,
  });
}