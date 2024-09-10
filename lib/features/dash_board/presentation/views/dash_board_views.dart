import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/adaptive_layout.dart';
import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/web_layout_view.dart';
import 'package:flutter/material.dart';

class DashBoardViews extends StatelessWidget {
  const DashBoardViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
         Shadow(color: Colors.white.withOpacity(0.2),padding: 0.04,),
         Shadow(color: Colors.white.withOpacity(0.4),padding: 0.08,),

        Shadow(
          color: Colors.white,
          padding: 0.16,
          child: AdaptiveLayout(
              mobileLayout: (context) => const Text("data"),
              tabletLayout: (context) => const Text("dsd"),
              webLayout: (context) => const WebLayoutView()),
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
