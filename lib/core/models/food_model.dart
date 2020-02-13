import 'package:meta/meta.dart';


class FoodModel {
  final String name;
  final double totalCalories;
  final double totalFat;
  final double saturatedFat;
  final double transFat;
  final double cholesterol;
  final double sodium;
  final double totalCarbs;
  final double dietaryFiber;
  final double sugars;
  final double addedSugars;
  final double protein;

  FoodModel({
    @required this.name,
    @required this.totalCalories,
    @required this.totalFat,
    @required this.saturatedFat,
    @required this.transFat,
    @required this.cholesterol,
    @required this.sodium,
    @required this.totalCarbs,
    @required this.dietaryFiber,
    @required this.sugars,
    @required this.addedSugars,
    @required this.protein,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
    name: json['food'],
    totalCalories: json['total_calories'],
    totalFat: json['total_fat'],
    saturatedFat: json['saturated_fat'],
    transFat: json['trans_fat'],
    cholesterol: json['cholesterol'],
    sodium: json['sodium'],
    totalCarbs: json['total_carbs'],
    dietaryFiber: json['dietary_fiber'],
    sugars: json['sugars'],
    addedSugars: json['added_sugars'],
    protein: json['protein'],
  );
}