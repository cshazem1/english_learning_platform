import 'package:english_learning_platform/features/dash_board/data/models/drawer_item_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItems,
  });
  final DrawerItemModels drawerItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(

        left: MediaQuery.sizeOf(context).width * 0.06,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),),
      child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            drawerItems.title,
            style: AppStyles.styleMedium14.copyWith(color: Colors.white),
          ),
          leading: SvgPicture.asset(
            drawerItems.image,
          )),
    );
  }
}
