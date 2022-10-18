import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/common/BI-Operation.dart';
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Map<String,dynamic>>  listTitle = [
     {"title":'收藏',"icon":  Image.asset('assets/images/collection.png',width: 28.0)},
     {"title":'朋友圈',"icon":Image.asset('assets/images/friends.png',width: 28.0)},
     {"title":'视频号',"icon":Image.asset('assets/images/video.png',width: 28.0)},
     {"title":'卡包',"icon":Image.asset('assets/images/card.png',width: 28.0)},
     {"title":'表情',"icon":Image.asset('assets/images/emo.png',width: 28.0)},
     {"title":'BI运营监控',"icon":Image.asset('assets/images/operation.png',width: 28.0),'page':const BIOperation()},

  ];

   listTitleTap(index){
     print(index);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0.0),
        itemBuilder: (BuildContext context,int index){
          if(index == 0){
            return Container (
                height: 220.0,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 10.0),
                child:Stack(
                  children: [
                    Positioned(
                        top: 100.0,
                        left: 25.0,
                        child:Row(
                          children: [
                            Container(
                             decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10.0)
                              ),
                             child: Image.network('https://t7.baidu.com/it/u=2405382010,1555992666&fm=193&f=GIF',width: 80.0,height: 80.0,fit: BoxFit.cover),
                            ),
                            const   SizedBox(width: 10.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:  const [
                                Text('ankouyang',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                                SizedBox(height: 15.0),
                                Text('微信号:ankou820',style: TextStyle(color: Color(0xff868686))),
                              ],
                            )
                          ],
                        )
                    ),
                    Positioned(
                        bottom: 52.0,
                        right: 20.0,
                        child: GestureDetector(
                              onTap: (){
                                 print('二维码');
                              },
                              child: Row(
                                  children: [
                                    Image.asset('assets/images/qrcode.png',width: 18.0),
                                    const SizedBox(width: 20.0),
                                    const Icon(Icons.arrow_forward_ios,size: 15.0,color: Color(0xffb1b1b1))
                                  ],
                           )
                        )

                    ),
                  ],
                )
            );
          }
          index -=1;
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 0.5),
            decoration:  const BoxDecoration(
                color: Colors.white,
                // boxShadow:[
                //   BoxShadow(
                //       color:const Color(0xffaaaaaa).withOpacity(0.2),
                //       offset: const Offset(0.0, 5.0), //阴影y轴偏移量
                //       blurRadius: 5.0, //阴影模糊程度
                //       spreadRadius: 0.0 //阴影扩散程度
                //   )
                // ]
            ),
            child:  ListTile(
              leading:listTitle.elementAt(index)['icon'],
              title:Text(listTitle.elementAt(index)['title']),
              trailing: const Icon(Icons.arrow_forward_ios,size: 15.0),
              onTap:(){
                if(listTitle.elementAt(index)['page']==null){
                  print(index);
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> listTitle.elementAt(index)['page']));
                }


              },
            ),
          );
        },
        itemCount: listTitle.length+1
    );
  }
}
