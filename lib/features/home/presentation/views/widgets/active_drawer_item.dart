import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/drawer_item_models.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
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
      decoration: const BoxDecoration(
          color: Color(0xffF1F3F8),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), topLeft: Radius.circular(20))),
      child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              drawerItems.title,
              style: AppStyles.styleMedium14(context).copyWith(color: Colors.black),
            ),
          ),
          leading: SvgPicture.asset(
            drawerItems.image,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          )),
    );
  }
}
