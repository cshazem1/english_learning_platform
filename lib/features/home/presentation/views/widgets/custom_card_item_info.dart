import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomCardItemInfo extends StatelessWidget {
  const CustomCardItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              "Annie Leonchart",
              style: AppStyles.styleSemiBold18(context),
            ),
            const SizedBox(height: 10,),

            Text(
              "annie_leonchart@mail.com",
              style: AppStyles.styleSemiBold18(context)
                  .copyWith(color: const Color(0xff959BA5)),
            ),
            const SizedBox(height: 10,),

            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(

                    children: [
                      Text(
                        "Lessons",
                        style: AppStyles.styleSemiBold18(context)
                            .copyWith(
                            color: const Color(0xff959BA5)),
                      ),
                      const SizedBox(height: 10,),
                      Text("24",style: AppStyles.styleBold28(context),)
                    ],
                  ),
                  const SizedBox(width: 10,),

                  const VerticalDivider(
                    color: Color(0xff959BA5), // Color of the divider

                    // Thickness of the divider
                    // Bottom spacing
                  ),
                  const SizedBox(width: 10,),

                  Column(
                    children: [
                      Text(
                        "Terms",
                        style: AppStyles.styleSemiBold18(context)
                            .copyWith(
                            color: const Color(0xff959BA5)),
                      ),
                      const SizedBox(height: 10,),

                      Text("1",style: AppStyles.styleBold28(context),),
                      const SizedBox(height: 10,),
                    ],
                  ),

                ],
              ),
            )
          ],
        ));
  }
}
