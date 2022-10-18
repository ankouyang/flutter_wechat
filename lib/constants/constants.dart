// 定义一系列常量抽象类
import 'dart:ui';
import 'package:flutter/material.dart';
 //主题颜色
 abstract class AppColor{
  //应用主题色
  static const int _primaryColorValue  = 0xff303030;
  static const Color primaryColor = Color(_primaryColorValue);
  static const MaterialColor primarySwatchColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFD1E3F6),
      100: Color(0xFFA7C9ED),
      200: Color(0xFF7EB0E4),
      300: Color(0xFF5999DB),
      400: Color(0xFF3683D2),
      500: Color(_primaryColorValue),
      600: Color(0xFF1258A1),
      700: Color(0xFF0d4279),
      800: Color(0xFF092C50),
      900: Color(0xFF041628),
    },
  );
  static const Color  selectBottomBarValue  = Color(0xff63ca6c); // 底部导航栏选中的颜色
  static const Color  scaffoldBackgroundColor  = Color(0xffededed); // scaffold颜色
  static const Color  cardColor  = Color(0xff393a3f); // scaffold颜色
  static const Color  colorScheme  = Color(0xffebebeb); // 颜色的主体成分
  static const Color  bottomNavigationBarBackgroundColor  = Color(0xFFF7F7F7); // 颜色的主体成分
  static const Color  dividerColor = Color(0xffc6c6c6); // 分割线的主体颜色
}
 //屏幕宽高
 class  AppPhysicalSize{
  double hcScreenWidth() {
    return window.physicalSize.width;
  }
  double hcScreenHeight(){
    return window.physicalSize.height;
  }
}


