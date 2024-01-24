import 'package:bitechronicle/common/colo_extension.dart';
import 'package:bitechronicle/common_widget/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  final Map pObj;
  const OnBoardingView({super.key, required this.pObj});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;
      setState(() {});
    });
  }

  List pageArr = [
    {
      "title": "Track Your Goal",
      "subtitle":
          "Set specific, measurable, realistic and time bound goals and track them efficiently.",
      "image": "assets/img/on_1.png"
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Hit the required threshold in each workout to drive positive results.",
      "image": "assets/img/on_2.png"
    },
    {
      "title": "Eat Well",
      "subtitle": "Forge lifelong mindful eating habits.",
      "image": "assets/img/on_3.png"
    },
    {
      "title": "Improve Sleep\nQuality",
      "subtitle":
          "Track sleep/wake time and deep sleep data to plan and schedule your sleeping hours.",
      "image": "assets/img/on_4.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj);
            },
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    value: selectPage / 3,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: TColor.primarycolor1,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.navigate_next, color: TColor.white),
                    onPressed: () {
                      if (selectPage < 3) {
                        selectPage = selectPage + 1;
                        controller.jumpToPage(selectPage);
                      } else {}
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
