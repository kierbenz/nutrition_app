import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class AppBarChart extends StatelessWidget {
  final List<OrdinalData> data;
  AppBarChart({@required this.data});
  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      [charts.Series<OrdinalData, String>(
          id: 'Test',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalData data, _) => data.category,
          measureFn: (OrdinalData data, _) => data.data,
          data: data,
        ),
      ],
    );
  }
}

class OrdinalData {
  OrdinalData(this.category, this.data);
  final String category;
  final double data;
}
