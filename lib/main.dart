import 'package:flutter/material.dart';
import 'app/screens/start_screen.dart';
import 'app/screens/home_screen.dart';
import 'app/screens/profile_screen.dart';
import 'app/screens/history_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Nutrition App',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (_) => StartScreen(),
      '/home': (_) => HomeScreen(),
      '/profile': (_) => ProfileScreen(),
      '/history': (_) => HistoryScreen(),
    }
  );
}
