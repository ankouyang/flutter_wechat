import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_wechat/constants/constants.dart';


final ThemeData  defaultTheme = ThemeData(
    primaryColor: const Color(0xff303030),//主题色
    scaffoldBackgroundColor: const Color(0xffebebeb),
    cardColor: const Color(0xff393a3f)
);

void main()=>runApp(
   //这里的传入的是一个APP 这个用material MaterialApp方const 法
     MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'wechat',
       // theme: defaultTheme,
       routes:<String,WidgetBuilder>{
            '/app':(_)=>const App(),
            '/friends':(_)=> WebviewScaffold(
                url:'https://winxin.qq.com/',
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