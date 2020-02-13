import 'package:flutter/foundation.dart';
import 'package:nutrition_app/core/repositories/profile_repository.dart';


class ProfileProvider with ChangeNotifier {
  ProfileRepository _repository;
  ProfileProvider() : _repository = ProfileRepository();
}
