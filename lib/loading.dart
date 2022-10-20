import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //异步延迟跳转
    Future.delayed(const Duration(seconds: 3),(){
        print('Flutter高仿微信程序启动.....');

        // Navigator.pushNamed(context, '/app');
      Navigator.pushReplacementNamed(context, '/app');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height:double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/wechat_start.webp'),
            // fit: BoxFit.cover

          )
      ),
    );
  }
}
