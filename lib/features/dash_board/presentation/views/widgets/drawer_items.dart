import 'package:english_learning_platform/core/utils/colors.dart';
import 'package:english_learning_platform/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: ColorManager.backGroundDrawer),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Dictionary",
          style: AppStyles.styleMedium14.copyWith(color: Colors.white),
        ),
        leading: Image.asset(
         Assets.imagesBook,
      
      )),
    );
  }
}
