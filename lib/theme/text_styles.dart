import 'package:flutter/material.dart';

import 'colors.dart';

extension TextStyles on TextTheme {
  TextStyle get textPreset1 => const TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.normal,
    height: 1,
    letterSpacing: 0,
    fontFamily: 'YoungSerif',
    color: AppColor.stone900,
  );

  TextStyle get textPreset2 => const TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.normal,
    height: 1,
    letterSpacing: 0,
    fontFamily: 'YoungSerif',
    color: AppColor.brown800,
  );

  TextStyle get textPreset3 => const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    height: 1,
    letterSpacing: 0,
    fontFamily: 'Outfit',
  );

  TextStyle get textPreset4 => const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
    fontFamily: 'Outfit',
    color: AppColor.stone600
  );

  TextStyle get textPreset4Bold => const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
    fontFamily: 'Outfit',
    color: AppColor.stone600
  );
}
