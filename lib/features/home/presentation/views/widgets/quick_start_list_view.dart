import 'package:english_learning_platform/features/home/presentation/views/widgets/quick_start_items.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../data/models/quick_start_madel.dart';

class QuickStartListView extends StatelessWidget {
  const QuickStartListView({
    super.key,
  });
  static final List<QuickStartMadel>items = [
    QuickStartMadel(title: "Exam", time: "20 min", image: Assets.imagesBook1),
    QuickStartMadel(title: "Writing", time: "15 min", image: Assets.imagesPen),
    QuickStartMadel(title: "Grammar", time: "17 min", image: Assets.imagesNote),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
shrinkWrap: true,
      itemCount:items.length ,
      itemBuilder: (context, index) {
        return  Padding(
          padding:  EdgeInsets.only(left: (index != 0 ? 20.0 : 0), right: 20.0),
          child: QuickStartItems(item: items[index]),);
      },
    );
  }
}
