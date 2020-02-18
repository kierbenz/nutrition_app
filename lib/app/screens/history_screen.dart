import 'package:flutter/material.dart';
import 'package:nutrition_app/app/shared_widgets/app_bar_chart.dart';
import 'package:nutrition_app/app/shared_widgets/app_dropdown_button.dart';
import 'package:nutrition_app/core/repositories/intake_repository.dart';

import '../shared_widgets/app_drawer.dart';
import 'widgets/gradient_appbar.dart';


class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String _range = '1 Week';
  String _category = 'Calorie';
  Map<String, double> _taken;
  @override
  void initState() {
    super.initState();
    _reloadCharts();
  }

  List<OrdinalData> _buildOrdinalData() {
    final List<OrdinalData> ordinalData = [];
    _taken.forEach((key, value) => ordinalData.add(OrdinalData(key, value)));
    return ordinalData;
  }

  List<DropdownMenuItem> _buildCategories(context) {
    const categories = [
      'Calorie',
      'Fat',
      'Saturated',
      'Trans',
      'Carbohydrates',
      'Added Sugar',
      'Sodium',
      'Protein'
    ];

    final List<DropdownMenuItem> menuItems = [];
    categories.forEach((category) => 
      menuItems.add(
        DropdownMenuItem(
          value: category,
          child: Text(category),
        ),
      ),
    );

    return menuItems;
  }

  void _reloadCharts() {
    if (_range == '1 Week') {
      _taken = IntakeRepository().getTakenByWeek(_category);
    } else if (_range == '5 Months') {
      _taken = IntakeRepository().getTakenByMonthly(_category);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      appBar: GradientAppBar(
        title: Text('History'),
        beginColor: Colors.greenAccent[400],
        endColor: Colors.tealAccent[700],
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: AppDropdownButton(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Range',
                    ),
                    value: _range,
                    onChanged: (value) {
                      setState(() {
                        _range = value;
                        _reloadCharts();
                      });
                    },
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(
                        value: '1 Week',
                        child: Text('1 Week'),
                      ),
                      DropdownMenuItem(
                        value: '5 Months',
                        child: Text('5 Months'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15.0),
                Flexible(
                  child: AppDropdownButton(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Category',
                    ),
                    value: _category,
                    onChanged: (value) {
                      setState(() {
                        _category = value;
                        _reloadCharts();
                      });
                    },
                    items: _buildCategories(context),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Card(
                child: AppBarChart(
                  data: _buildOrdinalData(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
