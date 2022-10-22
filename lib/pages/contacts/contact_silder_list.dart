import 'package:flutter/material.dart';
import 'package:flutter_wechat/constants/constants.dart';

class ContactSliderList extends StatefulWidget {
  final ValueChanged<String> callBack;
  const ContactSliderList({Key? key, required this.callBack}) : super(key: key);

  @override
  State<ContactSliderList> createState() => _ContactSliderListState();
}

class _ContactSliderListState extends State<ContactSliderList> {
  List<String>  sliderBarKey =[
    '↑',
    '✩',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'S',
    'Y',
    'Z',
    '#'
  ];

  int  currentIndex =-1;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      // 手指按下触发,竖着划就用onVertica XXX回调
      onVerticalDragDown: (e){
        // print(e);
        int i = e.localPosition.dy ~/ 20;
        widget.callBack(sliderBarKey[i]);
        setState(() {
          currentIndex = i;
        });
      },
      onVerticalDragUpdate:(e){
        int i = e.localPosition.dy ~/ 20;
        setState(() {
          currentIndex = i;
        });
        widget.callBack(sliderBarKey[i]);
      },
      // 手指抬起
      onTapUp: (e) {
        // 手指抬起
        setState(() {
          currentIndex = -1;
        });
      },
      // 移动取消
      onVerticalDragEnd: (e) {
        // 移动取消
        setState(() {
          currentIndex = -1;
        });
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:sliderBarKey.length,
        itemBuilder: (context,index){
          return  SizedBox(
              height: 20.0,
              child: Container(
                margin: const EdgeInsets.only(right: 5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color:currentIndex == index ? AppColor.selectBottomBarValue : null,
                    shape: BoxShape.circle),
                child:  Text(sliderBarKey[index],style: TextStyle(
                  color: currentIndex == index
                      ? Colors.white
                      : Colors.black87,
                )),
              )
          );
        }
     )
    );
  }
}
