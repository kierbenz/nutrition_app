import 'package:flutter/material.dart';
import 'app/screens/profile_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Nutrition App',
    home: ProfileScreen(),
  );
}
