import 'package:flutter/material.dart';
import 'package:nutrition_app/app/screens/widgets/gradient_appbar.dart';
import 'package:nutrition_app/app/shared_widgets/app_drawer.dart';
import 'widgets/profile_info_card.dart';
// import 'widgets/profile_form.dart';


final info = [
  'Fat',
  'Saturated',
  'Transfat',
  'Carbohydrates',
  'Added Sugar',
  'Sodium',
  'Protein',
];


class ProfileScreen extends StatelessWidget {
  List<Widget> _buildProfileInfoCard(context) =>
    info.map((data) => 
      ProfileInfoCard(
        title: data,
        subtitle: 'Recommended Intake: 150.00',
        secondSubtitle: 'Current Intake: 100.00',  
      ),
    ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      appBar: GradientAppBar(
        title: Text('Profile'),
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _buildProfileInfoCard(context),
        ),
      ),
    );
  }
}
