class RecommendationModel {
  String category;
  String recommendation;

  RecommendationModel({
    this.category,
    this.recommendation,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) => RecommendationModel(
    category: json['category'],
    recommendation: json['recommendation'],
  );

  Map<String, dynamic> toJson() => {
    'category': category,
    'recommendation': recommendation
  };
}