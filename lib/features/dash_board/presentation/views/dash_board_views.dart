import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/adaptive_layout.dart';
import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/web_layout_view.dart';
import 'package:flutter/material.dart';

class DashBoardViews extends StatelessWidget {
  const DashBoardViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: AdaptiveLayout(
            mobileLayout: (context) => const Text("data"),
            tabletLayout: (context) => const Text("dsd"),
            webLayout: (context) => const WebLayoutView()));
  }
}


