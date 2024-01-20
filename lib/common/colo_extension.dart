import 'package:flutter/material.dart';

class TColo {
  static Color get primarycolor1 => const Color(0xff92A3FD);
  static Color get primarycolor2 => const Color(0xff9DCEFF);

  static Color get secondarycolor1 => const Color(0xffC58BF2);
  static Color get secondarycolor2 => const Color(0xffEEA4CE);

  List<Color> getprimaryG = [primarycolor1, primarycolor2];
  List<Color> getsecondaryG = [secondarycolor1, secondarycolor2];

  static Color get black => const Color(0xff1D1617);
  static Color get grey => const Color(0xff786F72);
  static Color get white => Colors.white;
}
