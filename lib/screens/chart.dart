import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartsGraph extends StatefulWidget {
  const ChartsGraph({Key? key}) : super(key: key);

  @override
  State<ChartsGraph> createState() => _ChartsGraphState();
}

class _ChartsGraphState extends State<ChartsGraph> {
  List<_SalesData> data = [
    _SalesData('America', 225),
    _SalesData('Filtre', 330),
    _SalesData('C Macch', 150),
    _SalesData('Latte', 150),
    _SalesData('Espresso', 75),
    _SalesData('Türk', 65),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: const Text('İstatistikler'),
          leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                size: 40.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: Column(children: [
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: 'Kafein Oranları'),
              legend: Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'Sales',
                    dataLabelSettings: DataLabelSettings(isVisible: true))
              ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfSparkLineChart.custom(
                trackball: SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                marker: SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 6,
              ),
            ),
          )
        ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}