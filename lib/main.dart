import 'package:english_learning_platform/features/dash_board/presentation/views/widgets/dash_board_views.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashBoardViews());
  }
}
