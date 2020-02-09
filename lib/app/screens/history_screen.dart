import 'package:flutter/material.dart';
import 'package:nutrition_app/app/shared_widgets/app_bar_chart.dart';
import 'package:nutrition_app/app/shared_widgets/app_dropdown_button.dart';


// TODO: check range
class HistoryScreen extends StatelessWidget {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
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
                    value: '1 Week',
                    onChanged: (value) {
                      print(value);
                    },
                    items: <DropdownMenuItem>[
                      DropdownMenuItem(
                        value: '1 Week',
                        child: Text('1 Week'),
                      ),
                      DropdownMenuItem(
                        value: '1 Month',
                        child: Text('1 Month'),
                      ),
                      DropdownMenuItem(
                        value: '3 Months',
                        child: Text('3 Months'),
                      ),
                      DropdownMenuItem(
                        value: '6 Months',
                        child: Text('6 Months'),
                      ),
                      DropdownMenuItem(
                        value: '1 Year',
                        child: Text('1 Year'),
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
                    value: 'Calorie',
                    onChanged: (value) {
                      print(value);
                    },
                    items: _buildCategories(context),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Card(child: AppBarChart(null)),
            ),
          ],
        ),
      ),
    );
  }
}
