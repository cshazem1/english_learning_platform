import 'package:english_learning_platform/features/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/home_tablet_layout_view.dart';
import 'package:english_learning_platform/features/home/presentation/views/widgets/home_web_layout_view.dart';
import 'package:english_learning_platform/generated/assets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:MediaQuery.sizeOf(context).width < 600 ?  AppBar(
backgroundColor: Color(0xff403752).withOpacity(0.3),

     ):null,
        drawer: Padding(
            padding:  EdgeInsets.only(right:MediaQuery.sizeOf(context).width * 0.5,top: MediaQuery.sizeOf(context).width * 0.09),

            child: const CustomDrawer()),
        body: Stack(
              children: [
         Shadow(color: Colors.white.withOpacity(0.2),padding: 0.04,),


                Shadow(color: Colors.white.withOpacity(0.4),padding: 0.08,),
                Positioned(
                    bottom: -50,
                    right: -30,
                    child: Image.asset(Assets.imagesFolder,width: 400,height: 400,)),
        Shadow(
          color:  const Color(0xffF1F3F8),
          padding: 0.16,
          child: AdaptiveLayout(
              mobileLayout: (context) => const HomeMobileLayout(),
              tabletLayout: (context) => const HomeTabletLayoutView(),
              webLayout: (context) => const HomeWebLayoutView()),
        ),

              ],
            ));
  }
}













class Shadow extends StatelessWidget {
 final double padding;
 final Color color;
 final Widget? child;
  const Shadow({required this.color, required this.padding, this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.sizeOf(context).width * (0.2-padding),
          left: MediaQuery.sizeOf(context).height * (0.2-padding),
          right: MediaQuery.sizeOf(context).height * (0.2-padding),
          bottom: MediaQuery.sizeOf(context).height * (0+padding)),
      child: Container(
        decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color:color ),
        child: child,
      ),
    );
  }
}
