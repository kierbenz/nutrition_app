class ProfileModel {
  int age;
  String sex;
  double height;
  double weight;
  String goal;
  String activityLevel;
  
  ProfileModel({
    this.age,
    this.sex,
    this.height,
    this.weight,
    this.goal,
    this.activityLevel,
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
