import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  double h(int value) => MediaQuery.of(this).size.height * (value / 1000);
  double w(int value) => MediaQuery.of(this).size.width * (value / 1000);
}

const kFontSize10 = 10;
const kFontSize12 = 12;
const kFontSize14 = 14;
const kFontSize16 = 16;
const kFontSize18 = 18;
const kFontSize20 = 20;
const kFontSize22 = 22;
const kFontSize24 = 24;
const kFontSize26 = 26;
const kFontSize28 = 28;
const kFontSize30 = 30;
const kFontSize32 = 32;
const kFontSize34 = 34;
const kFontSize36 = 36;
const kFontSize38 = 38;
const kFontSize40 = 40;
const kFontSize42 = 42;
const kFontSize44 = 44;
const kFontSize46 = 46;
const kFontSize48 = 48;
const kFontSize50 = 50;
