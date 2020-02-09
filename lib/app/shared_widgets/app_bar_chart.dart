import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class AppBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  
  AppBarChart(this.seriesList);

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      [charts.Series<OrdinalData, String>(
          id: 'Test',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalData data, _) => data.category,
          measureFn: (OrdinalData data, _) => data.data,
          data: [
            OrdinalData('Tuesday', 100),
            OrdinalData('Wednesday', 200),
          ],
        ),
      ],
    );
  }
}

class OrdinalData {
  OrdinalData(this.category, this.data);
  final String category;
  final int data;
}
