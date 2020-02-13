import 'package:meta/meta.dart';

class IntakeModel {
  final String foodName;
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
  final DateTime postedOn;
  
  IntakeModel({
    @required this.foodName,
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
    @required this.postedOn,
  });

  factory IntakeModel.fromJson(Map<String, dynamic> json) => IntakeModel(
    foodName: json['foodName'],
    totalCalories: json['totalCalories'],
    totalFat: json['totalFat'],
    saturatedFat: json['saturatedFat'],
    transFat: json['transFat'],
    cholesterol: json['cholesterol'],
    sodium: json['sodium'],
    totalCarbs: json['totalCarbs'],
    dietaryFiber: json['dietaryFiber'],
    sugars: json['sugars'],
    addedSugars: json['addedSugars'],
    protein: json['protein'],
    postedOn: DateTime.parse(json['postedOn']),
  );

  Map<String, dynamic> toJson() => {
    'foodName': foodName,
    'totalCalories': totalCalories,
    'totalFat': totalFat,
    'saturatedFat': saturatedFat,
    'transFat': transFat,
    'cholesterol': cholesterol,
    'sodium': sodium,
    'totalCarbs': totalCarbs,
    'dietaryFiber': dietaryFiber,
    'sugars': sugars,
    'addedSugars': addedSugars,
    'protein': protein,
    'postedOn': postedOn.toIso8601String(),
  };
}