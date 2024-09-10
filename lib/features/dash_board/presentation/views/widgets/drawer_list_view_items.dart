import 'package:english_learning_platform/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../data/models/drawer_item_models.dart';
import 'drawer_items.dart';

class DrawerListViewItems extends StatefulWidget {
  const DrawerListViewItems({
    super.key,
  });


  @override
  State<DrawerListViewItems> createState() => _DrawerListViewItemsState();
}
 final List<DrawerItemModels> drawerItems = [
  DrawerItemModels(title: "", image: ""),
  DrawerItemModels(title: "Dashboard", image: Assets.svgDashBoard),
  DrawerItemModels(title: "Explore", image: Assets.svgExplore),
  DrawerItemModels(title: "Dictionary", image: Assets.svgBooks),
  DrawerItemModels(title: "Schedule", image: Assets.svgDate),
  DrawerItemModels(title: "", image:""),
];
class _DrawerListViewItemsState extends State<DrawerListViewItems> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return DrawerItem(
          intTopPosition: currentIndex == index - 1
              ? 0
              : currentIndex == index+1
                  ? 1
                  : -1,
          onTap: () {

print("$index  $currentIndex ");
            currentIndex=  index!=0&&index!=drawerItems.length-1? index: currentIndex = currentIndex;
              setState(() {


              });




            },
          drawerItems: drawerItems[index],
          isActive: currentIndex == index,
        );
      },
    );
  }
}
