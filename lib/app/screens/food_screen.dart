import 'package:flutter/material.dart';
import 'widgets/food_card.dart';
import 'food_detail_screen.dart';

class FoodScreen extends StatelessWidget {
  void _navigateToDetail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => FoodDetailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.greenAccent[400],
              Colors.tealAccent[700],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Container(
                height: 163.0,
                child: Center(
                  child: Text(
                    'Select Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ), 
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 63.0),
                  child: Column(
                    children: <Widget>[
                      FoodCard(
                        title: 'Adobo',
                        subtitle: 'Rich in Protein',
                        onTap: () => _navigateToDetail(context),
                      ),
                      FoodCard(
                        title: 'Fish',
                        subtitle: 'Richest in Protein',
                        onTap: () => _navigateToDetail(context),
                      ),
                      FoodCard(
                        title: 'Pork & Beans',
                        subtitle: 'Richer in Protein',
                        onTap: () => _navigateToDetail(context),
                      ),
                      FoodCard(
                        title: 'Pinakbet',
                        subtitle: 'Gulay na gulay',
                        onTap: () => _navigateToDetail(context),
                      ),
                      FoodCard(
                        title: 'Baboy',
                        subtitle: 'Pig',
                        onTap: () => _navigateToDetail(context),
                      ),
                    ],
                  ),
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
