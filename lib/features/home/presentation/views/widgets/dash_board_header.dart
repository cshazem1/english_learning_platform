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
            const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.grey,
            ),
            Transform.rotate(
                angle: -3.14, child: const Icon(Icons.arrow_back_ios_new)),
          ]),
        ),
        const Expanded(flex: 4, child: DashBoardSearch()),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),
                width: 50,
                height: 50,
                child: const Icon(Icons.message_outlined),
              ),
              const SizedBox(width: 10,),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),
                width: 50,
                height: 50,
                child: const Icon(Icons.notification_add),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
