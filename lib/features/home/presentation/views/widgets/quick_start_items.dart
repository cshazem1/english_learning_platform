import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/quick_start_madel.dart';

class QuickStartItems extends StatelessWidget {
  const QuickStartItems({
    super.key, required  this.item,
  });
  final QuickStartMadel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(item.image),
          const SizedBox(width: 20,),
          Column(children: [
            FittedBox(
                fit: BoxFit.scaleDown,

                child: Text(item.title,style: AppStyles.styleBold18(context).copyWith(color: Colors.black),)),
            const SizedBox(height: 5,),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(item.time,style: AppStyles.styleRegular14(context),)),

          ],)
        ],
      ),
    );
  }
}
