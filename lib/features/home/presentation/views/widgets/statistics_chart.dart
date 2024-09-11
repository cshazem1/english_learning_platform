import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsChart extends StatelessWidget {
  const StatisticsChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 768/318,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: LineChart(
            curve: Easing.emphasizedAccelerate,
            LineChartData(
              backgroundColor: Colors.white,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 1),
                    const FlSpot(1, 3),
                    const FlSpot(2, 10),
                    const FlSpot(3, 7),
                    const FlSpot(4, 12),
                    const FlSpot(5, 15),
                    const FlSpot(6, 13),
                    const FlSpot(7, 10),
                    const FlSpot(8, 9),
                    const FlSpot(9, 14),
                    const FlSpot(10, 12),
                    const FlSpot(11, 16),
                  ],
                  isCurved: true,
                  barWidth: 3,
                  belowBarData: BarAreaData(show: false),
                  dotData: const FlDotData(show: false),
                ),
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 15),
                    const FlSpot(1, 14),
                    const FlSpot(2, 13),
                    const FlSpot(3, 11),
                    const FlSpot(4, 12),
                    const FlSpot(5, 3),
                    const FlSpot(6, 15),
                    const FlSpot(7, 5),
                    const FlSpot(8, 0),
                    const FlSpot(9, 5),
                    const FlSpot(10, 0),
                    const FlSpot(11, 0),
                  ],
                  isCurved: true,
                  color: Colors.pink,
                  barWidth: 3,
                  belowBarData: BarAreaData(show: false),
                  dotData: const FlDotData(show: false),
                ),
              ],
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                rightTitles: const AxisTitles(drawBelowEverything: false),
                topTitles: const AxisTitles(drawBelowEverything: false),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                    reservedSize: 35,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 0:
                          return const Text('Jan');
                        case 1:
                          return const Text('Feb');
                        case 2:
                          return const Text('Mar');
                        case 3:
                          return const Text('Apr');
                        case 4:
                          return const Text('May');
                        case 5:
                          return const Text('Jun');
                        case 6:
                          return const Text('Jul');
                        case 7:
                          return const Text('Aug');
                        case 8:
                          return const Text('Sep');
                        case 9:
                          return const Text('Oct');
                        case 10:
                          return const Text('Nov');
                        case 11:
                          return const Text('Dec');
                        default:
                          return const Text('');
                      }
                    },
                  ),
                ),
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              borderData: FlBorderData(show: false),
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 20,
            ),
          ),
        ),
      ),
    );
  }
}
