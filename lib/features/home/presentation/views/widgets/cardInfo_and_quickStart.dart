import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_card_info.dart';
import 'package:flutter/material.dart';

import 'quick_start.dart';

class CardInfoAndQuickStart extends StatelessWidget {
  const CardInfoAndQuickStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        Expanded(child: CustomCardInfo()),
        SizedBox(
          height: 20,
        ),
        Expanded(child: QuickStart())
      ],
    );
  }
}
