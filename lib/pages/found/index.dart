import 'package:flutter/material.dart';
// import 'package:flutter_wechat/pages/found/found_item.dart';
class Found extends StatefulWidget {
  const Found({Key? key}) : super(key: key);

  @override
  State<Found> createState() => _FoundState();
}

class _FoundState extends State<Found> {
  // 先定义一个List,定义好名称和icon
  List<Map<String,dynamic>> blocks = [
    {
      '朋友圈': 'assets/images/found_friend.png',
    },
    {
      '视频号':'assets/images/found_video.png',
      '直播':'assets/images/found_living.png',
    },
    {
      '扫一扫':'assets/images/found_scan.png',
      '摇一摇':'assets/images/found_shake.png',
    },
    {
      '看一看':'assets/images/found_look.png',
      '搜一搜':'assets/images/found_search.png',
    },
    {
      '附近':'assets/images/found_recent.png',
    },
    {
      '购物':'assets/images/found_shop.png',
      '游戏':'assets/images/found_games.png',
    },
    {
      '小程序':'assets/images/found_mini.png'
    },
  ];



  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: blocks.length,
        itemBuilder: (context,blockIndex){
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            color: Colors.white,
            child: ListView.builder(
                shrinkWrap: true,
                itemExtent: 50.0,
                // physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context,mapIndex){
                  return   Container(
                    decoration:  BoxDecoration(
                       border: Border(bottom: BorderSide(width: 0.5,color: (blocks[blockIndex].length-1)!=mapIndex?const Color(0xffe5e5e5):Colors.transparent))
                    ),
                    child: ListTile(
                      leading:Image.asset(blocks[blockIndex].values.elementAt(mapIndex),width: 28.0),
                      title:Text(blocks[blockIndex].keys.elementAt(mapIndex)),
                      trailing:  const Icon(Icons.arrow_forward_ios,size: 15.0),
                      onTap: (){
                        if(blocks[blockIndex].keys.elementAt(mapIndex) =='朋友圈'){
                            Navigator.pushNamed(context, '/friends');
                        }
                        // print('${mapIndex}');
                      },
                    ),
                  );
                },
                itemCount: blocks[blockIndex].length
            ),
          );
        }
    );
  }
}
