import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/drawer_item_models.dart';

class InActiveDrawerItem extends StatelessWidget {
  InActiveDrawerItem({
    required this.intTopPosition,
    super.key,
    required this.drawerItems,
  });
  int intTopPosition = -1;
  final DrawerItemModels drawerItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.sizeOf(context).width * 0.06,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xff403752),
        borderRadius: intTopPosition==0
            ? const BorderRadius.only(
                topRight: Radius.circular(20)):intTopPosition==1 ? const BorderRadius.only(bottomRight: Radius.circular(20))
            : null,
      ),
      child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 1,minHeight: 1),
              child: Text(
                drawerItems.title,
                style: AppStyles.styleMedium14(context).copyWith(color: Colors.white),
              ),
            ),
          ),
          leading: SvgPicture.asset(
            drawerItems.image,colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
          )),
    );
  }
}
