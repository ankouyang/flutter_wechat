import 'package:flutter/material.dart';
import 'package:flutter_wechat/constants/constants.dart';
import 'package:flutter_wechat/pages/chat/index.dart';
import 'package:flutter_wechat/pages/contacts/index.dart';
import 'package:flutter_wechat/pages/found/index.dart';
import 'package:flutter_wechat/pages/personal/index.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // BottomNavigationBarItem
  List<BottomNavigationBarItem>   bottomNavigationBarItem= [
       BottomNavigationBarItem(
           icon: Image.asset('assets/images/common-message.png',width: 20.0,height: 20.0),
           activeIcon: Image.asset('assets/images/active-message.png',width: 20.0,height: 20.0),
           label: '微信',
       ),
       BottomNavigationBarItem(
           icon: Image.asset('assets/images/common-contact.png',width: 20.0,height: 20.0),
           activeIcon: Image.asset('assets/images/active-contact.png',width: 20.0,height: 20.0),
           label: '通信录'
       ),
       BottomNavigationBarItem(
           icon: Image.asset('assets/images/common-found.png',width: 20.0,height: 20.0),
           activeIcon: Image.asset('assets/images/active-found.png',width: 20.0,height: 20.0),
           label: '发现'
       ),
       BottomNavigationBarItem(
           icon: Image.asset('assets/images/my.png',width: 20.0,height: 20.0),
           activeIcon: Image.asset('assets/images/active-my.png',width: 20.0,height: 20.0),
           label: '我的'
       ),
  ];
  int currentIndex = 0;
  //  对应的widget
  List<Widget>  appWidget= const [
      Chat(), 
      Contacts(), 
      Found(), 
      MyPage(), 
  ];

  // 对应的Title
  List<String> appTitle =[
      '微信',
      '通信录',
      '发现',
      '我的',
  ];
  // 新建一个滑动PageViewController
  late PageController  pageController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:  currentIndex==3?null:AppBar(
            automaticallyImplyLeading: false,//隐藏返回按钮
            centerTitle: true,
            title: Text(appTitle[currentIndex],style: const TextStyle(color: AppColor.primaryColor)),
            actions:  [
              GestureDetector(
                child: Image.asset('assets/images/search.png',width: 25.0,color: AppColor.primaryColor),
                onTap: (){
                  print('搜索');
                  Navigator.pushNamed(context, '/search');
                },
              ),
              GestureDetector(
                  child:Container(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: Image.asset('assets/images/add.png',width: 30.0,color: AppColor.primaryColor),
                  ),
                onTap: (){
                   print('添加好友');
                },
              )
            ],
            // 这里必须要使用 PreferredSize 进行包装
            bottom: PreferredSize(
              preferredSize: const  Size.fromHeight(0),
              child:Container(
                height: 0.5,
                color: AppColor.dividerColor,
              ),
            )
          ),
          body: PageView.builder(
            itemCount:appWidget.length,
            controller:pageController,
            itemBuilder:(context,index){//这个builder 是按需加载
              return appWidget.elementAt(index);
            },
            onPageChanged: (index){
                setState(() {
                  currentIndex =index;
                });
             },
            ),
          bottomNavigationBar: Container(
            decoration:  const BoxDecoration(
              border: Border(top: BorderSide(width: 0.5, color:AppColor.dividerColor))
            ),
            child: BottomNavigationBar(
              elevation: 0.0,
              backgroundColor:AppColor.bottomNavigationBarBackgroundColor,
              selectedItemColor:AppColor.selectBottomBarValue,
              selectedFontSize:12.0,
              type: BottomNavigationBarType.fixed,//让label文字显示出来
              currentIndex:currentIndex,
              items:bottomNavigationBarItem,
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });
                //点击时候也让其滑动到指定的页面
                pageController.animateToPage(index, duration: const Duration(milliseconds: 3), curve:Curves.ease );
              },
            ),
          )
    );
  }
}
