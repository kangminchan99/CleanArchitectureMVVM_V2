import 'package:flutter/material.dart';

// instance 못하게 abstract로 선언
abstract class ColorStyles {
  static Color black = Color(0xFF000000);
  static Color gray1 = Color(0xFF484848);
  static Color gray2 = Color(0xFF797979);
  static Color gray3 = Color(0xFFA9A9A9);
  static Color gray4 = Color(0xFFD9D9D9);
  static Color white = Color(0xFFFFFFFF);

  static Color primary100 = Color(0xFF129575);
  static Color primary80 = Color(0xFF71B1A1);
  static Color primary60 = Color(0xFFAFD3CA);
  static Color primary40 = Color(0xFFDBEBE7);
  static Color primary20 = Color(0xFFF6FAF9);

  static Color secondary100 = Color(0xFFFF9C00);
  static Color secondary80 = Color(0xFFFFA61A);
  static Color secondary60 = Color(0xFFFFBA4D);
  static Color secondary40 = Color(0xFFFFCE80);
  static Color secondary20 = Color(0xFFFFE1B3);

  static Color error = Color(0xFFE94A59);
  static Color warning = Color(0xFFFFE1E7);

  static Color success = Color(0xFF31B057);
  static Color success10 = Color(0xFFEAF7EE);

  static Color rating = Color(0xFFFFAD30);

  static Color primaryColor = primary100;
  static Color secondaryColor = secondary100;
  static Color labelColor = Color(0xFF121212);
}
