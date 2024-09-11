import 'package:english_learning_platform/features/home/presentation/views/widgets/word_sets_items.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../data/models/drawer_item_models.dart';

class WordSetsListView extends StatelessWidget {
  const WordSetsListView({
    super.key,
  });
  static final List<List<Color>> gradientColors = [
    [Colors.pinkAccent, Colors.blue],
    [Colors.blue, Colors.pinkAccent],
    [Colors.purple, Colors.pink],
  ];
  static final List<DrawerItemModels> items = [
    DrawerItemModels(title: "Books and Library", image: Assets.imagesBook),
    DrawerItemModels(
        title: "Countries and cities", image: Assets.imagesCountries1),
    DrawerItemModels(title: "What is o'clock now?", image: Assets.imagesClock),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              items.length,
                  (index) => Expanded(
                child: WordSetsItems(
                    item: items[index],
                    gradientColor:
                    gradientColors[index % gradientColors.length]),
              )).toList()),
    );
  }
}
