import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_card_info.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/header_and_words_and_statistics.dart';
import 'package:flutter/material.dart';

import 'quick_start.dart';

class HomeMobileLayoutView extends StatelessWidget {
  const HomeMobileLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: CustomDrawer(),
      ),
      Expanded(
          flex: 3,
          child:
          SingleChildScrollView(child: Column(
            children: [
              CustomCardInfo(),

              HeaderAndWordsAndStatistics(),

              QuickStart(),

            ],
          ))),
    ],
    );

  }
}
