import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'dash_board_header.dart';

class HomeWebLayoutView extends StatelessWidget {
  const HomeWebLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 22.0, left: 22.0),
            child: Column(
              children: [DashBoardHeader()],
            ),
          ),
        ),
      ],
    );
  }
}


