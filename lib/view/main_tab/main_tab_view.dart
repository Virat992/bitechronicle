import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Text("MainTabView"),
          ],
        ),
      ),
    );
  }
}
