import 'package:english_learning_platform/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../data/models/drawer_item_models.dart';
import 'drawer_items.dart';

class DrawerListViewItems extends StatelessWidget {
  const DrawerListViewItems({
    super.key,
  });
  static final List<DrawerItemModels> drawerItems = [
    DrawerItemModels(title: "Dashboard", image: Assets.svgDashBoard),
    DrawerItemModels(title: "Explore", image: Assets.svgExplore),
    DrawerItemModels(title: "Dictionary", image: Assets.svgBooks),
    DrawerItemModels(title: "Schedule", image: Assets.svgDate),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
      return DrawerItem(

          drawerItems: drawerItems[index]);
    },);
  }
}
