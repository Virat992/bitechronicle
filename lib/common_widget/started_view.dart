import 'package:bitechronicle/common/colo_extension.dart';
//import 'package:bitechronicle/common_widget/on_boarding_page.dart';
import 'package:bitechronicle/common_widget/round_button.dart';
import 'package:bitechronicle/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  final TColor _tColor = TColor();
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
              gradient: isChangeColor
                  ? LinearGradient(
                      colors: _tColor.primaryG,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)
                  : null),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Fitness",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Everbody Can Train",
                style: TextStyle(
                    color: TColor.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundButton(
                    title: "Get Started",
                    type: isChangeColor
                        ? RoundButtonType.textGradient
                        : RoundButtonType.bgGradient,
                    onPressed: () {
                      if (isChangeColor) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnBoardingView(),
                            ));
                      } else {
                        setState(() {
                          isChangeColor = true;
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
