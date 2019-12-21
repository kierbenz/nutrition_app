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
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        child: Container(
          child: Center(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () { print('test'); },
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.greenAccent[400],
                Colors.tealAccent[700],
              ],
            ),
          ),
        ),
        onPressed: () { print('yeaah'); },
      ),
    );
  }
}
