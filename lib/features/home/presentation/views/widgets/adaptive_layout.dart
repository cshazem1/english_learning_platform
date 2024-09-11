import 'package:english_learning_platform/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    required this.mobileLayout,
    required this.tabletLayout,
    required this.webLayout,
    super.key,
  });
  final WidgetBuilder mobileLayout, tabletLayout, webLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > SizeConfig.desktop) {

          return webLayout(context);
        } else if (constraints.maxWidth > SizeConfig.tablet) {
          return tabletLayout(context);
        } else {
          return mobileLayout(context);
        }
      },
    );
  }


}
