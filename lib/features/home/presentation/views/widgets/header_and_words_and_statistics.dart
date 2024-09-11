import 'package:english_learning_platform/features/home/presentation/views/widgets/statistics.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/word_sets.dart';
import 'package:flutter/material.dart';

import 'dash_board_header.dart';

class HeaderAndWordsAndStatistics extends StatelessWidget {
  const HeaderAndWordsAndStatistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 22.0, left: 22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashBoardHeader(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: WordSets()),
          SizedBox(height: 8,),
          Expanded(
              child: Statistics()),
          SizedBox(width: 8,)
        ],
      ),
    );
  }
}
