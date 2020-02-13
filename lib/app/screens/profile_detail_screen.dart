import 'package:flutter/material.dart';
import 'package:nutrition_app/app/shared_widgets/app_dropdown_button.dart';
import 'package:nutrition_app/app/shared_widgets/with_primary_stack.dart';
import 'package:nutrition_app/core/models/profile_model.dart';
import 'package:nutrition_app/core/repositories/profile_repository.dart';
import 'home_screen.dart';

class ProfileDetailScreen extends StatefulWidget {
  @override
  _ProfileDetailScreenState createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final ProfileRepository _profileRepository = ProfileRepository();
  final ProfileModel _profile = ProfileModel(
    sex: 'Male',
    activityLevel: 'Inactive',
    goal: 'Maintain Weight'
  );
  
  onSave() async {
    await _profileRepository.setProfile(_profile);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Detail'),
      ),
      body: WithPrimaryStack(
        primaryText: 'Save Profile',
        onPrimary: onSave,
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: AppDropdownButton(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Gender',
                      ),
                      value: _profile.sex,
                      items: <DropdownMenuItem>[
                        DropdownMenuItem(
                          value: 'Male',
                          child: Text('Male'),
                        ),
                        DropdownMenuItem(
                          value: 'Female',
                          child: Text('Female'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() =>
                          _profile.sex = value);
                      },
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Age',
                      ),
                      onChanged: (text) {
                        _profile.age = int.parse(text);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              AppDropdownButton(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Activity Level',
                ),
                value: _profile.activityLevel,
                items: <DropdownMenuItem>[
                  DropdownMenuItem(
                    value: 'Inactive',
                    child: Text('Inactive'),
                  ),
                  DropdownMenuItem(
                    value: 'Sedentary Work',
                    child: Text('Sedentary Work'),
                  ),
                  DropdownMenuItem(
                    value: 'Moderately Active',
                    child: Text('Moderately Active'),
                  ),
                  DropdownMenuItem(
                    value: 'Vigorously Active',
                    child: Text('Vigorously Active'),
                  ),
                  DropdownMenuItem(
                    value: 'Extremely Active',
                    child: Text('Extremely Active'),
                  ),
                ],
                onChanged: (value) {
                  setState(() =>
                    _profile.activityLevel = value);
                },
              ),
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Height (cm)',
                      ),
                      onChanged: (value) {
                        _profile.height = double.parse(value);
                      },
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Weight (kg)',
                      ),
                      onChanged: (value) {
                        _profile.weight = double.parse(value);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              AppDropdownButton(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Goal',
                ),
                value: _profile.goal,
                items: <DropdownMenuItem>[
                  DropdownMenuItem(
                    value: 'Lose Weight',
                    child: Text('Lose Weight'),
                  ),
                  DropdownMenuItem(
                    value: 'Maintain Weight',
                    child: Text('Maintain Weight'),
                  ),
                  DropdownMenuItem(
                    value: 'Gain Weight',
                    child: Text('Gain Weight'),
                  ),
                ],
                onChanged: (value) {
                  setState(() =>
                    _profile.goal = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}