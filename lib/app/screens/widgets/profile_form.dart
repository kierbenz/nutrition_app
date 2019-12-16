import 'package:flutter/material.dart';
import 'profile_form_field.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ProfileFormField(labelText: 'Age'),
          ProfileFormField(labelText: 'Sex'),
          ProfileFormField(labelText: 'Height'),
          ProfileFormField(labelText: 'Weight'),
          ProfileFormField(labelText: 'Activity Level'),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              print('Save');
            },
          ),
        ],
      ),
    );
  }
}