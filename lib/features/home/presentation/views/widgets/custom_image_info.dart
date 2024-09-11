import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class CustomImageInfo extends StatelessWidget {
  const CustomImageInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: 150,
        height: 150,
        child: CircleAvatar(
          child: Image.asset(
            Assets.imagesAvatar,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
