import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/drawer_item_models.dart';

class WordSetsItems extends StatelessWidget {
  const WordSetsItems({
    required this.item,
    super.key,
    required this.gradientColor,
  });
  final DrawerItemModels item;
  final List<Color> gradientColor;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 240 / 140,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  transform: const GradientRotation(0.05),
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: gradientColor,
                  tileMode: TileMode.repeated),
              borderRadius: BorderRadiusDirectional.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(item.image),
                    ConstrainedBox(
                      constraints:  BoxConstraints( maxHeight: 50),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(top: 15),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white.withOpacity(.4)),
                        child: SvgPicture.asset(
                          Assets.svgHeart,width: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  item.title,
                  style: AppStyles.styleBold18(context).copyWith(color: Colors.white),
                ),

              ),
              const SizedBox(height: 12,)
            ],
          ),
        ));
  }
}
