import 'package:flutter/material.dart';
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
        subtitle: 'Recommended Intake: 150.00; Current Intake: 100.00'  
      ),
    ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _buildProfileInfoCard(context),
        ),
      ),
    );
  }
}
