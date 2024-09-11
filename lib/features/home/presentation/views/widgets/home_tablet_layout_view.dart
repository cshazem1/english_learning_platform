import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_card_info.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/header_and_words_and_statistics.dart';
import 'package:flutter/material.dart';

import 'quick_start.dart';

class HomeTabletLayoutView extends StatelessWidget {
  const HomeTabletLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: CustomDrawer(),
      ),
      SizedBox(width: 22,),
      Expanded(
          flex: 3,
          child:
          HomeMobileLayout()),
    ],
    );

  }
}

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomCardInfo(),
      SizedBox(height: 150,),
          HeaderAndWordsAndStatistics(),
      SizedBox(height: 20,),
          QuickStart(),
      
        ],
      ),
    );
  }
}
