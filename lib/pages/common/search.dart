import 'package:flutter/material.dart';
import 'package:flutter_wechat/constants/constants.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  //搜索内容
  String  searchValue = '';

  //获取焦点
  FocusNode   inputNode = FocusNode();


  // 指定内容数据
  List<Map<String,dynamic>> textList= [
    {'title':'朋友圈','path':'1'},
    {'title':'公众号','path':'2'},
    {'title':'小程序','path':'3'},
    {'title':'表情','path':'4'},
  ];
  // 最近在搜索数据
  List<Map<String,dynamic>> historyList= [];
  // 搜索发现数据
  List<String> searchList = [
    '未来五年房地产怎么发展?定调来了',
    '党代表14位将亮相的发言人是谁',
    '党的二十大主席团将第二次会议',
    '美国共产党员:我来到了二十大现场',
    '背溪管道受损后水下画面:截面锋利',
    '全球最大无瑕疵钻石估价约1亿元',
    '我就是我，颜色不一样的烟火',
  ];

  List<Widget> buildText(){
    List<Widget>   textWidget =[];
    for(var item in textList) {
      textWidget.add(
          GestureDetector(
            child:  Text(item['title'],style: const TextStyle(color: Color(0xff616d87),fontWeight: FontWeight.bold)),
            onTap: (){
              print(item['path']);
            },
          )
      );
    }
    return   textWidget;
  }

  List<Widget> buildSearchText(){
    List<Widget>   textWidget =[];
    for(var item in searchList) {
      textWidget.add(
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(item,style: const TextStyle(color: Color(0xff898989),fontWeight: FontWeight.bold)),
            ),
            onTap: (){
              print(item);
            },
          )
      );
    }
    return   textWidget;
  }

  List<Widget> buildRow( List list){
    List<Widget>   rowTextWidget =[];
    for(var item in list) {
      rowTextWidget.add(
          GestureDetector(
            child:Row(
                children: [
                  Image.asset('assets/images/clock.png',width: 18.0),
                  const SizedBox(width: 5.0),
                  SizedBox(
                    width: 120.0,
                    child: Text(item['title'],softWrap:true,overflow:TextOverflow.ellipsis,maxLines:1,style: const TextStyle(color: Color(0xff898989),fontWeight: FontWeight.bold)),)
                ],
              ),
            onTap: (){
              print(item['path']);
            },
          )
      );
    }
    return   rowTextWidget;
  }

  List<Widget> buildHistoryText(){
    List  historyWidget =[];
    List<Widget> historyWidgetList =[];
    for(var i=0;  i< historyList.length; i +=2) {
      if(historyList.length % 2 !=0&& i == historyList.length-1){
        historyWidget.add([historyList[historyList.length-1]]);
      }else{
        historyWidget.add(historyList.sublist(i, i + 2));
      }
    }
    for(var item in historyWidget) {
      historyWidgetList.add(
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
            alignment: Alignment.centerLeft,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildRow(item),
            ),
          )

      );
    }
    return  historyWidgetList;
  }

   void deleteHistory(){
      setState(() {
        historyList.removeAt(historyList.length - 1);
        // print(historyList);
      });
   }



  @override
    void initState() {
    // TODO: implement initState
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                buildInputStack(context),
                buildContentStack(),
                buildSearchStack(),
                buildFoundStack()
              ],
            ),
          ),
        ),
      )
    );
  }
  // 搜索发现Widget
  Stack buildFoundStack() {
    return Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left:30.0,right: 30.0,top: 10.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40.0,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width:0.5,color: Color(0xffd6d6d6)))
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('搜索发现',style: TextStyle(color: Color(0xffacacac))),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: buildSearchText()
                  ),
                  ],
                ),
              )
            ],
          );
  }
  // 指定内容Widget
  Stack buildSearchStack() {
    return Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left:30.0,right: 30.0,top: 30.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40.0,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width:0.5,color: Color(0xffd6d6d6)))
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                           const Text('最近在搜索',style: TextStyle(color: Color(0xffacacac))),
                          historyList.isNotEmpty?GestureDetector(
                             onTap: deleteHistory,
                             child:Image.asset('assets/images/delete.png',width: 20.0),
                           ):const Text('')
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    historyList.isNotEmpty?Column(
                      children: buildHistoryText(),
                    ):const Center(child: Text('最新无搜索',style: TextStyle(color: Color(0xffacacac))))
                  ],
                ),
              )
            ],
          );
  }
  // 最近在搜索Widget
  Stack buildContentStack() {
    return Stack(
            children: [
             Container(
               alignment: Alignment.centerLeft,
               margin:  const EdgeInsets.only(left:30.0,right: 30.0,top: 30.0),
               child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:  [
                   Container(
                     alignment: Alignment.centerLeft,
                     height: 40.0,
                     decoration: const BoxDecoration(
                       border: Border(bottom: BorderSide(width:0.5,color: Color(0xffd6d6d6)))
                     ),
                     child: const Text('搜索指定内容',style: TextStyle(color: Color(0xffacacac))),
                   ),
                   const SizedBox(height: 20.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: buildText(),
                   )
                 ],
               ),
             )
            ],
          );
  }
  // 头部搜索Widget
  FocusScope buildInputStack(BuildContext context) {
    final FocusScopeNode  focusScopeNode = FocusScopeNode();
    return FocusScope(
        node:focusScopeNode,
        child: Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 38.0,
          margin: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Expanded(
                  child:TextField(
                    focusNode: inputNode,
                    onChanged:(val){
                      setState(() {
                        searchValue = val;
                      });
                    },
                    textInputAction: TextInputAction.search,
                    onEditingComplete: () {
                      focusScopeNode.unfocus();
                      setState(() {
                        historyList.add({'title':searchValue,'path':'sdd'});
                      });
                      // print("search");
                    },
                    style:  const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Align(
                        //注意这里 widthFactor heightFactor 否则无法自定义 prefixIcon 图片的大小
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Image.asset('assets/images/search.png',width:25.0 ,color:  Color(0xffbbbbbb))
                      ),
                      suffixIcon: const Icon(Icons.mic,color: AppColor.primaryColor),
                      prefixStyle: const TextStyle(fontSize: 30.0),
                      fillColor:Colors.white,
                      filled: true,//重点，必须设置为true，fillColor才有效
                      contentPadding: const EdgeInsets.all(2),
                      border:  const OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: '搜索',
                    ),
                  )
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 30.0,
                alignment: Alignment.center,
                child: GestureDetector(
                  child: const Text('取消',style: TextStyle(color: Color(0xff616d87))),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    )
    );
  }
}

class Exception2 {
}
