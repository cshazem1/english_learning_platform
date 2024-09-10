import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/drawer_items.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

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
          const Column(
            children: [
              SizedBox(height: 100,),
              DrawerItem(),
            ],
          )
        ],
      ),
    );
  }
}


