import 'package:flutter/material.dart';

import '../../../data/models/drawer_item_models.dart';
import 'active_drawer_item.dart';
import 'in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  final void Function()? onTap;
  final bool isActive;
  int intTopPosition = -1;
   DrawerItem({required this.intTopPosition,
    this.onTap,
    required this.isActive,
    super.key,
    required this.drawerItems,
  });
  final DrawerItemModels drawerItems;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isActive
          ? ActiveDrawerItem(drawerItems: drawerItems)
          : InActiveDrawerItem(drawerItems: drawerItems,intTopPosition: intTopPosition),
    );
  }
}

