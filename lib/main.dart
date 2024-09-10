import 'package:english_learning_platform/core/utils/colors.dart';
import 'package:english_learning_platform/features/dash_board/presentation/views/dash_board_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ColorManager.backGround),

        debugShowCheckedModeBanner: false,
        home: const DashBoardViews());
  }
}
