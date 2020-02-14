final _activityLevel = {
  'Inactive': 1.2,
  'Sedentary Work': 1.375,
  'Moderately Active': 1.55,
  'Vigorously Active': 1.725,
  'Extremely Active': 1.9
};

double getActivityLevelValue(key) {
  return _activityLevel[key];
}

final _goal = {
  'Lose Weight': -500.00,
  'Maintain Weight': 0.00,
  'Gain Weight': 500.00
};

double getGoalValue(key) {
  return _goal[key];
}
