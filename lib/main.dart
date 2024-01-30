import 'package:bitechronicle/common/colo_extension.dart';
import 'package:bitechronicle/common_widget/started_view.dart';
import 'package:bitechronicle/view/login/signup_view.dart';
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
        theme: ThemeData(
            primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),
        home: const SignUpView());
  }
}
