import 'package:flutter/material.dart';
import 'widgets/gradient_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Home'),
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
    );
  }
}
