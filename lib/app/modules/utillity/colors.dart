import 'dart:ui';

import 'package:flutter/material.dart';

class ColorResources {
  static const Color PRIMARY = Color(0xff192D6B);
  static const Color BLUE = Color(0xff2F80ED);
  static const Color BLACK = Color(0xff000000);
  static const Color BLACK_MAERIAL = Color(0xff1F1F1F);
  static const Color WHITE = Color(0xffFFFFFF);
  static const Color GRAY = Color(0xff828282);
  static const Color LIGHT_GREY = Color(0xffEFEFEF);
  static const Color NAVY_BLUE = Color(0xff0F2230);
  static const Color GREEN = Color(0xff219653);
  static const Color LEAVE_COLOR = Color(0xffffa07a);
  static const Color GENERAL_COLOR = Color(0xff2F80ED);
  static const Color ICT_COLOR = Color(0xff27AE60);
  static const Color DNC_STORE_COLOR = Color(0xffF2994A);
  static const Color RED = Color(0xffEB5757);

  static const Map<int, Color> colorMap = {
    50: Color(0x10192D6B),
    100: Color(0x20192D6B),
    200: Color(0x30192D6B),
    300: Color(0x40192D6B),
    400: Color(0x50192D6B),
    500: Color(0x60192D6B),
    600: Color(0x70192D6B),
    700: Color(0x80192D6B),
    800: Color(0x90192D6B),
    900: Color(0xff192D6B),
  };

  static const MaterialColor PRIMARY_MATERIAL =
      MaterialColor(0xFF192D6B, colorMap);
}
