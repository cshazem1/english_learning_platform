import 'package:english_learning_platform/features/home/presentation/views/widgets/statistics_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class Statistics extends StatelessWidget {
  const Statistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Statistics",
          style: AppStyles.styleBold22,
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(
            child:StatisticsChart()

        )
      ],
    );
  }
}
