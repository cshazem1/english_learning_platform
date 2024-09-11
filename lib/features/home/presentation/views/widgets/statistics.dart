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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Statistics",
              style: AppStyles.styleBold22(context),
            ),
            Row(children: [
              const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: Colors.grey,
              ),
              Text(
                " 2022",
                style: AppStyles.styleRegular16(context),
              ),
              Transform.rotate(
                angle: -3.14,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                ),
              ),
            ]),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(child: StatisticsChart())
      ],
    );
  }
}
