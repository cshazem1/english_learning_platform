import 'package:english_learning_platform/features/home/presentation/views/widgets/statistics.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/word_sets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'dash_board_header.dart';

class HomeWebLayoutView extends StatelessWidget {
  const HomeWebLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
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
                Expanded(
                    child: Statistics())
              ],
            ),
          ),
        ),
      ],
    );
  }
}


