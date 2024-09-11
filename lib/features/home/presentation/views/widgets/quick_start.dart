import 'package:english_learning_platform/features/home/presentation/views/widgets/quick_start_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class QuickStart extends StatelessWidget {
  const QuickStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60,),
        Text(
          "Quick Start",style: AppStyles.styleBold28(context),
        ),
        const SizedBox(height: 10,),
        const QuickStartListView(),
      ],
    );
  }
}
