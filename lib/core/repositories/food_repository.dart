import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/food_model.dart';


class FoodRepository {
  List<FoodModel> _foods;

  // singleton
  FoodRepository._internal();
  static FoodRepository _instance = FoodRepository._internal();
  factory FoodRepository() => _instance;

  Future<void> init() async {
    String data = await rootBundle.loadString('assets/foods.json');
    List<dynamic> foodsData = json.decode(data);
    _foods = foodsData.map((food) => FoodModel.fromJson(food)).toList();
  }

  List<FoodModel> getFoods() {
    return _foods;
  }
}