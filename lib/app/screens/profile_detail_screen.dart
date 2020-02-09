import 'package:flutter/material.dart';
import 'package:nutrition_app/app/shared_widgets/app_dropdown_button.dart';
import 'package:nutrition_app/app/shared_widgets/with_primary_stack.dart';
import 'home_screen.dart';

class ProfileDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Detail'),
      ),
      body: WithPrimaryStack(
        primaryText: 'Save Profile',
        onPrimary: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => HomeScreen()),
          );
        },
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
                      value: 'Male',
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
                        print(value);
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
                value: 'Inactive',
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
                  print(value);
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
                value: 'Maintain Weight',
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
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}