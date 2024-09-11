import 'package:flutter/material.dart';

import 'dash_board_search.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(children: [
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
              ),
            ),
            Transform.rotate(
                angle: -3.14, child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(Icons.arrow_back_ios_new))),
          ]),
        ),
        const Expanded(flex: 3, child: DashBoardSearch()),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(10),

                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),

                child: const Icon(Icons.message_outlined),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),
               
                child: const Icon(Icons.notification_add),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
