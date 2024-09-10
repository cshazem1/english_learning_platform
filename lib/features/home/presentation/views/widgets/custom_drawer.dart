import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../data/models/drawer_item_models.dart';
import 'drawer_list_view_items.dart';
import 'in_active_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.015),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff403752),
              ),
            ),
          ),
          CustomScrollView(
      
            slivers: [
              const DrawerListViewItems(),
      
               SliverToBoxAdapter(
                  child: Container(
                    color: const Color(0xff403752),
                    child: const Divider(
                                  indent: 30,
                                  endIndent: 30,
                                ),
                  )),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Expanded(child: SizedBox()),
                    InActiveDrawerItem(
                      intTopPosition: -1,
                      drawerItems: DrawerItemModels(
                          title: "Settings", image: Assets.svgSetting),
                    ),
                    InActiveDrawerItem(
                      intTopPosition: -1,
                      drawerItems: DrawerItemModels(
                          title: "Log Out", image: Assets.svgSubtract),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: -65,
            left: -30,
            child: Transform.rotate(
                angle: -0.2,
                child: Image.asset(
                  Assets.imagesMagnifier,
                  fit: BoxFit.fill,
                  height: 200,
                  width: 200,
                )),
          ),
        ],
      ),
    );
  }
}
