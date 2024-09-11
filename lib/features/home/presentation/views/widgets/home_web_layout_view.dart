import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cardInfo_and_quickStart.dart';
import 'custom_drawer.dart';
import 'header_and_words_and_statistics.dart';

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
          child: SingleChildScrollView(child: HeaderAndWordsAndStatistics()),
        ),
        SizedBox(width: 22,),
        Expanded(
            child: SingleChildScrollView(child: CardInfoAndQuickStart()))
      ],
    );
  }
}




