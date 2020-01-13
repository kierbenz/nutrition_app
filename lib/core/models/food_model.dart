import 'package:meta/meta.dart';


class FoodModel {
  final String foodName;
  final double calorieSize;
  final double fatSize;
  final double sugarSize;
  final double carbSize;
  final double sodiumSize;
  final double cholesterolSize;

  FoodModel({
    @required this.foodName,
    @required this.calorieSize,
    @required this.fatSize,
    @required this.sugarSize,
    @required this.carbSize,
    @required this.sodiumSize,
    @required this.cholesterolSize,
  });
}