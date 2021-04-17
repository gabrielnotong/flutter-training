import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimplePieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate});

  factory SimplePieChart.withSampleData() {
    return SimplePieChart(
      _createSampleData(),
      animate: false,
    );
  }

  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 18, charts.MaterialPalette.deepOrange.shadeDefault),
      new LinearSales(1, 53, charts.MaterialPalette.indigo.shadeDefault),
      new LinearSales(2, 29, charts.MaterialPalette.blue.shadeDefault),
    ];

    return [
      charts.Series(
        id: 'Sales',
        data: data,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        colorFn: (LinearSales sales, _) => sales.color,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
    );
  }
}

class LinearSales {
  final int year;
  final int sales;
  final charts.Color color;

  LinearSales(this.year, this.sales, this.color);
}
