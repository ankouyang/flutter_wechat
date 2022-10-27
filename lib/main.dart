import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_wechat/constants/constants.dart';
import 'package:flutter_wechat/pages/common/search.dart';


final ThemeData  defaultTheme = ThemeData(
    primaryColor: AppColor.primaryColor ,
    scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
    cardColor:AppColor.cardColor,
    colorScheme: const ColorScheme.light().copyWith(primary: AppColor.selectBottomBarValue),
    primarySwatch: AppColor.primarySwatchColor,
    buttonTheme: const ButtonThemeData(
        buttonColor: AppColor.primaryColor,
        textTheme: ButtonTextTheme.normal
    ),
    appBarTheme:  const AppBarTheme(
      elevation: 0.0,
      titleTextStyle: TextStyle(color: AppColor.primaryColor,fontSize:18.0,fontWeight: FontWeight.bold),
      backgroundColor: AppColor.colorScheme,
      iconTheme: IconThemeData(
        color: AppColor.primaryColor
      )
    )
);

void main(){
  //安卓手机清除状态栏蒙层
  if(Platform.isAndroid){
     SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
     SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  return runApp(
    //这里的传入的是一个APP 这个用material MaterialApp方const 法
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'wechat',
          theme: defaultTheme,
          routes:<String,WidgetBuilder>{
            '/app':(_)=>const App(),
            '/search':(_)=>const Search(),
            '/friends':(_)=> WebviewScaffold(
              url:'https://weixin.qq.com/',
              appBar: AppBar(
                title: const Text('微信朋友圈'),
              ),
              withZoom: true,
              withLocalStorage: true,
            ) //可以单独起一个页面，可以直接用WebviewScaffold 包裹
          } , //这个是静态路由，这是一个map
          home:const LoadingPage()
      )
  );
}