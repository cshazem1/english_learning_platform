import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/drawer_items.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../data/models/drawer_item_models.dart';
import 'drawer_list_view_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff403752),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -80,
            left: -40,
            child: Transform.rotate(
                angle: -0.2,
                child: Image.asset(
                  Assets.imagesMagnifier,
                  fit: BoxFit.fill,
                  height: 300,
                  width: 300,
                )),
          ),
          
           CustomScrollView(
            slivers: [

              const SliverToBoxAdapter(child: SizedBox(height: 50,)),
              const DrawerListViewItems(),
              const SliverToBoxAdapter(child: SizedBox(height: 10,)),
              const SliverToBoxAdapter(child: Divider(indent: 30, endIndent: 30,)),
              SliverFillRemaining(
                hasScrollBody: false,

                child: Column(
                  children: [
                    const Expanded(child: SizedBox()),
                     DrawerItem(drawerItems: DrawerItemModels(title: "Settings", image: Assets.svgSetting)),
                     DrawerItem(drawerItems: DrawerItemModels(title: "Log Out", image: Assets.svgSubtract)),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


