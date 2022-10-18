import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:flutter_wechat/model/sample_view.dart';


class BIOperation extends StatefulWidget {
  const BIOperation({Key? key}) : super(key: key);

  @override
  State<BIOperation> createState() => _BIOperationState();
}

class _BIOperationState extends State<BIOperation> {

  TooltipBehavior? _tooltipBehavior;
  late bool _showDistributionCurve;
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
    _SalesData('May2', 41),
    _SalesData('May3', 42),
  ];
  List<_PieData> pieData = [
    _PieData('Jan', 35,'妖姬'),
    _PieData('Feb', 28,'鲁班'),
    _PieData('Mar', 34,'狐狸'),
    _PieData('Apr', 32,'后羿'),
    _PieData('May', 40,'甄姬'),
    _PieData('May2', 41,'王昭君'),
    _PieData('May3', 42,'刘备'),
  ];

  List<ChartSampleData>? chartData;
  late List<ChartSampleData> randomData;
  late CrosshairLineType _lineType;


  FunnelSeries<ChartSampleData, String> _getFunnelSeries() {
    return FunnelSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Others', y: 10, text: '10%'),
          ChartSampleData(x: 'Medical ', y: 11, text: '11%'),
          ChartSampleData(x: 'Saving ', y: 14, text: '14%'),
          ChartSampleData(x: 'Shopping', y: 17, text: '17%'),
          ChartSampleData(x: 'Travel', y: 21, text: '21%'),
          ChartSampleData(x: 'Food', y: 27, text: '27%'),
        ],
        //   textFieldMapper: (ChartSampleData data, _) => data.text,
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelSettings: const DataLabelSettings(
          isVisible: true,
          //labelPosition: ChartDataLabelPosition.inside
        ));
  }


  ///Get the histogram series
  List<HistogramSeries<ChartSampleData, double>> _getHistogramSeries() {
    return <HistogramSeries<ChartSampleData, double>>[
      HistogramSeries<ChartSampleData, double>(
        name: 'Score',
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 5.250),
          ChartSampleData(x: 7.750),
          ChartSampleData(x: 0.0),
          ChartSampleData(x: 8.275),
          ChartSampleData(x: 9.750),
          ChartSampleData(x: 7.750),
          ChartSampleData(x: 8.275),
          ChartSampleData(x: 6.250),
          ChartSampleData(x: 5.750),
          ChartSampleData(x: 5.250),
          ChartSampleData(x: 23.000),
          ChartSampleData(x: 26.500),
          ChartSampleData(x: 26.500),
          ChartSampleData(x: 27.750),
          ChartSampleData(x: 25.025),
          ChartSampleData(x: 26.500),
          ChartSampleData(x: 28.025),
          ChartSampleData(x: 29.250),
          ChartSampleData(x: 26.750),
          ChartSampleData(x: 27.250),
          ChartSampleData(x: 26.250),
          ChartSampleData(x: 25.250),
          ChartSampleData(x: 34.500),
          ChartSampleData(x: 25.625),
          ChartSampleData(x: 25.500),
          ChartSampleData(x: 26.625),
          ChartSampleData(x: 36.275),
          ChartSampleData(x: 36.250),
          ChartSampleData(x: 26.875),
          ChartSampleData(x: 40.000),
          ChartSampleData(x: 43.000),
          ChartSampleData(x: 46.500),
          ChartSampleData(x: 47.750),
          ChartSampleData(x: 45.025),
          ChartSampleData(x: 56.500),
          ChartSampleData(x: 56.500),
          ChartSampleData(x: 58.025),
          ChartSampleData(x: 59.250),
          ChartSampleData(x: 56.750),
          ChartSampleData(x: 57.250),
          ChartSampleData(x: 46.250),
          ChartSampleData(x: 55.250),
          ChartSampleData(x: 44.500),
          ChartSampleData(x: 45.525),
          ChartSampleData(x: 55.500),
          ChartSampleData(x: 46.625),
          ChartSampleData(x: 46.275),
          ChartSampleData(x: 56.250),
          ChartSampleData(x: 46.875),
          ChartSampleData(x: 43.000),
          ChartSampleData(x: 46.250),
          ChartSampleData(x: 55.250),
          ChartSampleData(x: 44.500),
          ChartSampleData(x: 45.425),
          ChartSampleData(x: 55.500),
          ChartSampleData(x: 56.625),
          ChartSampleData(x: 46.275),
          ChartSampleData(x: 56.250),
          ChartSampleData(x: 46.875),
          ChartSampleData(x: 43.000),
          ChartSampleData(x: 46.250),
          ChartSampleData(x: 55.250),
          ChartSampleData(x: 44.500),
          ChartSampleData(x: 45.425),
          ChartSampleData(x: 55.500),
          ChartSampleData(x: 46.625),
          ChartSampleData(x: 56.275),
          ChartSampleData(x: 46.250),
          ChartSampleData(x: 56.875),
          ChartSampleData(x: 41.000),
          ChartSampleData(x: 63.000),
          ChartSampleData(x: 66.500),
          ChartSampleData(x: 67.750),
          ChartSampleData(x: 65.025),
          ChartSampleData(x: 66.500),
          ChartSampleData(x: 76.500),
          ChartSampleData(x: 78.025),
          ChartSampleData(x: 79.250),
          ChartSampleData(x: 76.750),
          ChartSampleData(x: 77.250),
          ChartSampleData(x: 66.250),
          ChartSampleData(x: 75.250),
          ChartSampleData(x: 74.500),
          ChartSampleData(x: 65.625),
          ChartSampleData(x: 75.500),
          ChartSampleData(x: 76.625),
          ChartSampleData(x: 76.275),
          ChartSampleData(x: 66.250),
          ChartSampleData(x: 66.875),
          ChartSampleData(x: 80.000),
          ChartSampleData(x: 85.250),
          ChartSampleData(x: 87.750),
          ChartSampleData(x: 89.000),
          ChartSampleData(x: 88.275),
          ChartSampleData(x: 89.750),
          ChartSampleData(x: 97.750),
          ChartSampleData(x: 98.275),
          ChartSampleData(x: 96.250),
          ChartSampleData(x: 95.750),
          ChartSampleData(x: 95.250)
        ],

        /// If we enable this property distribution line is sets in histogram.
        showNormalDistributionCurve: _showDistributionCurve,

        /// It used to add the color for distribution line.
        curveColor: const Color.fromRGBO(192, 108, 132, 1),
        binInterval: 20,

        /// It used to add the dashes line for distribution line.
        curveDashArray: <double>[12, 3, 3, 3],
        width: 0.99,
        curveWidth: 2.5,
        yValueMapper: (ChartSampleData sales, _) => sales.x as double,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      )
    ];
  }

  List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
    return <SplineSeries<ChartSampleData, String>>[
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData!,
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'High',
      ),
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData!,
        name: 'Low',
        markerSettings: const MarkerSettings(isVisible: true),
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      )
    ];
  }

  /// Returns the list of chart series which need to
  /// render on the Cartesian chart.
  List<LineSeries<ChartSampleData, DateTime>> getDefaultCrossHairSeries() {
    return <LineSeries<ChartSampleData, DateTime>>[
      LineSeries<ChartSampleData, DateTime>(
          dataSource: randomData,
          xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          width: 2)
    ];
  }
  List<ChartSampleData> getDatatTimeData() {
    final List<ChartSampleData> randomData = <ChartSampleData>[];
    final Random rand = Random();
    double value = 100;
    for (int i = 1; i < 2000; i++) {
      if (rand.nextDouble() > 0.5) {
        value += rand.nextDouble();
      } else {
        value -= rand.nextDouble();
      }
      randomData.add(ChartSampleData(x: DateTime(1900, i), y: value));
    }
    return randomData;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tooltipBehavior = TooltipBehavior( enable: true);
    _showDistributionCurve = true;
    _lineType = CrosshairLineType.both;
    randomData = getDatatTimeData();
    chartData = <ChartSampleData>[
      ChartSampleData(
          x: 'Jan', y: 43, secondSeriesYValue: 37, thirdSeriesYValue: 41),
      ChartSampleData(
          x: 'Feb', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45),
      ChartSampleData(
          x: 'Mar', y: 50, secondSeriesYValue: 39, thirdSeriesYValue: 48),
      ChartSampleData(
          x: 'Apr', y: 55, secondSeriesYValue: 43, thirdSeriesYValue: 52),
      ChartSampleData(
          x: 'May', y: 63, secondSeriesYValue: 48, thirdSeriesYValue: 57),
      ChartSampleData(
          x: 'Jun', y: 68, secondSeriesYValue: 54, thirdSeriesYValue: 61),
      ChartSampleData(
          x: 'Jul', y: 72, secondSeriesYValue: 57, thirdSeriesYValue: 66),
      ChartSampleData(
          x: 'Aug', y: 70, secondSeriesYValue: 57, thirdSeriesYValue: 66),
      ChartSampleData(
          x: 'Sep', y: 66, secondSeriesYValue: 54, thirdSeriesYValue: 63),
      ChartSampleData(
          x: 'Oct', y: 57, secondSeriesYValue: 48, thirdSeriesYValue: 55),
      ChartSampleData(
          x: 'Nov', y: 50, secondSeriesYValue: 43, thirdSeriesYValue: 50),
      ChartSampleData(
          x: 'Dec', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45)
    ];
  }



  @override
  void dispose() {
    // TODO: implement dispose
    chartData!.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BI运营监控'),
        ),
        body: Scrollbar(
          child:  SingleChildScrollView(
            child: Column(
              children: [
                SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // title: ChartTitle(text: '销售额度进度图'),
                  legend: Legend(isVisible: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: '销售',
                        //Enable data label
                        dataLabelSettings: const DataLabelSettings(isVisible: true)
                    )
                  ],
                  tooltipBehavior: _tooltipBehavior,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Initialize the spark charts widget
                  child: SfSparkLineChart.custom(
                    //Enable the trackball
                    trackball: const SparkChartTrackball(
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    marker: const SparkChartMarker(
                        displayMode: SparkChartMarkerDisplayMode.all),
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.all,
                    xValueMapper: (int index) => data[index].year,
                    yValueMapper: (int index) => data[index].sales,
                    dataCount: 7,
                  ),
                ),
                SfCircularChart(
                  title: ChartTitle(text: 'Sales by sales person'),
                  legend: Legend(isVisible: true),
                  series: <PieSeries<_PieData, String>>[
                    PieSeries<_PieData, String>(
                        explode: true,
                        explodeIndex: 0,
                        dataSource: pieData,
                        xValueMapper: (_PieData data, _) => data.xData,
                        yValueMapper: (_PieData data, _) => data.yData,
                        // dataLabelMapper: (_PieData data, _) => data.text,
                        dataLabelSettings: const DataLabelSettings(isVisible: true)
                    ),
                  ],
                  tooltipBehavior: _tooltipBehavior,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SfSparkBarChart(
                    data: const <double>[18, 24, 30, 14, 28],
                  ),
                ),
                SfFunnelChart(
                  // legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                  tooltipBehavior: _tooltipBehavior,
                  series: _getFunnelSeries(),
                 ),
                SfCartesianChart(
                   plotAreaBorderWidth: 0,
                   title: ChartTitle(text: 'Examination Result'),
                   primaryXAxis: NumericAxis(
                     majorGridLines: const MajorGridLines(width: 0),
                     minimum: 0,
                     maximum: 100,
                   ),
                   primaryYAxis: NumericAxis(
                       name: 'Number of Students',
                       minimum: 0,
                       maximum: 50,
                       axisLine: const AxisLine(width: 0),
                       majorTickLines: const MajorTickLines(size: 0)),
                   series: _getHistogramSeries(),
                   tooltipBehavior: _tooltipBehavior,
          ),
                SfCartesianChart(
                  title: ChartTitle(text: 'Average high/low temperature of London'),
                  plotAreaBorderWidth: 0,
                  legend: Legend(isVisible: !true),
                  primaryXAxis: CategoryAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      labelPlacement: LabelPlacement.onTicks),
                  primaryYAxis: NumericAxis(
                      minimum: 30,
                      maximum: 80,
                      axisLine: const AxisLine(width: 0),
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                      labelFormat: '{value}°F',
                      majorTickLines: const MajorTickLines(size: 0)),
                  series: _getDefaultSplineSeries(),
                  tooltipBehavior: TooltipBehavior(enable: true),
                ),
                SfCartesianChart(
                 plotAreaBorderWidth: 0,
                 primaryXAxis: DateTimeAxis(
                     // dateFormat: DateFormat.y(),
                     majorGridLines: const MajorGridLines(width: 0),
                     edgeLabelPlacement: EdgeLabelPlacement.shift,
                     interactiveTooltip: InteractiveTooltip(
                         enable: (_lineType == CrosshairLineType.both ||
                             _lineType == CrosshairLineType.vertical)
                             ? true
                             : false)),

                 /// To enable the cross hair for cartesian chart.
                 crosshairBehavior: CrosshairBehavior(
                     enable: true,
                     hideDelay:2 * 1000,
                     activationMode: ActivationMode.singleTap,
                     shouldAlwaysShow: true,
                     lineType: _lineType),
                 primaryYAxis: NumericAxis(
                     axisLine: const AxisLine(width: 0),
                     interactiveTooltip: InteractiveTooltip(
                         enable: (_lineType == CrosshairLineType.both ||
                             _lineType == CrosshairLineType.horizontal)
                             ? true
                             : false),
                     majorTickLines: const MajorTickLines(width: 0)),
                 series: getDefaultCrossHairSeries(),
                )
              ],
            ),
          ),
          )
        );
  }

}


class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _PieData {
  _PieData(this.xData, this.yData,this.text);
  final String xData;
  final num yData;
  final String text;
}
