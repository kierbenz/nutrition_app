import 'package:flutter/material.dart';
import 'widgets/profile_form.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(11.0),
        child: ProfileForm()
      ),
    );
  }
}
