import 'package:flutter/material.dart';

import 'custom_card_item_info.dart';
import 'custom_image_info.dart';

class CustomCardInfo extends StatelessWidget {
  const CustomCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 100,
                right: 0,
                left: 0,
                child: CustomCardItemInfo(),
              ),
              CustomImageInfo(),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
