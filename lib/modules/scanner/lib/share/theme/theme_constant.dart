import 'package:project_p/modules/scanner/lib/share/utils/hexcolor.dart';
import 'package:flutter/material.dart';

class ThemeConstant {
  static Color primaryColor = HexColor('#647FFF');
  static Color hightLightTxtColor = HexColor('#6C66FF');
  static Color subTitleTxtColor = Colors.white.withAlpha(50);
  static UnderlineInputBorder inputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
          color: ThemeConstant.primaryColor,
          width: 1.0,
          style: BorderStyle.solid));
}
