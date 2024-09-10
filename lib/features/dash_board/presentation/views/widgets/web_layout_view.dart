import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class WebLayoutView extends StatelessWidget {
  const WebLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer(),


        ),
        Expanded(
          flex: 2,
          child: Text("data"),
        ),
      ],
    );
  }
}
