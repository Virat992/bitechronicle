import 'package:bitechronicle/common/colo_extension.dart';
import 'package:bitechronicle/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiteChronicles',
      theme:
          ThemeData(primaryColor: TColor.primarycolor1, fontFamily: "Poppins"),
      home: const OnBoardingView(
        pObj: {},
      ),
    );
  }
}
