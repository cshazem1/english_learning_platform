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
        if (constraints.maxWidth > 1200) {

          return webLayout(context);
        } else if (constraints.maxWidth > 800) {
          return tabletLayout(context);
        } else {
          return mobileLayout(context);
        }
      },
    );
  }


}
