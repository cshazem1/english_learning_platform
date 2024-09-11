import 'package:english_learning_platform/features/home/presentation/views/widgets/word_sets_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class WordSets extends StatelessWidget {
  const WordSets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Word Sets",
          style: AppStyles.styleBold22,
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(
          child: WordSetsListView(),
        )
      ],
    );
  }
}
