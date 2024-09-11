import 'package:device_preview/device_preview.dart';
import 'package:english_learning_platform/core/utils/colors.dart';
import 'package:english_learning_platform/features/home/presentation/views/home_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      theme: ThemeData(scaffoldBackgroundColor: ColorManager.backGround),

        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
