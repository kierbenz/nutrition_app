import 'package:flutter/material.dart';

class ProfileFormField extends StatelessWidget {
  
  final String labelText;
  
  ProfileFormField({@required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)), 
      ),
    );
  }
}
