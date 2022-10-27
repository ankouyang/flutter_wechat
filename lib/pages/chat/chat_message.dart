import 'package:flutter/material.dart';
class ChatMessage extends StatefulWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {

   FocusNode inputNode =  FocusNode();
   TextEditingController  textEditingController = TextEditingController();
   String searchValue = '';

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: AppBar(
             leading: GestureDetector(
               child: const Icon(Icons.arrow_back_ios),
               onTap: (){
                 Navigator.pop(context);
               },
             ),
             centerTitle: true,
             title: const Text('图图爸爸'),
             actions:[
                Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child:  const Icon(Icons.more_horiz,size: 30.0),
                )
             ],
           ),
            body: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                      left: 0,
                      bottom: 0,
                      width:MediaQuery.of(context).size.width, //定位需要使用这个  使用double.infinity会失效
                      child:buildInputStack(context)
                  )
                ],
            ),
      );
  }


   // 底部的输入
   FocusScope buildInputStack(BuildContext context) {
     final FocusScopeNode  focusScopeNode = FocusScopeNode();
     return FocusScope(
         node:focusScopeNode,
         child: Stack(
           children: [
             Container(
               alignment: Alignment.center,
               height: 50.0,
               decoration: const BoxDecoration(
                 color:  Color(0xfff7f7f7),
                 border: Border(top: BorderSide(width: 0.5,color: Color(0xffd2d2d2)))
               ),
               child:Container(
                 alignment: Alignment.centerLeft,
                 height: 38.0,
                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:  [
                     Image.asset('assets/images/radio.png',width: 30),
                     const SizedBox(width: 10.0),
                     Expanded(
                         child:TextField(
                           maxLines: 10,//最多多少行
                           minLines: 1,//最少多少行
                           focusNode: inputNode,
                           controller: textEditingController,
                           onChanged:(val){
                             setState(() {
                               searchValue = val;
                             });
                           },
                           textInputAction: TextInputAction.go,
                           onEditingComplete: () {
                             focusScopeNode.unfocus();
                             setState(() {

                             });
                             // print("search");
                           },
                           style:  const TextStyle(
                             color: Colors.black,
                             fontSize: 16.0,
                           ),
                           decoration: const InputDecoration(
                               prefixStyle: TextStyle(fontSize: 30.0),
                               fillColor:Colors.white,
                               filled: true,//重点，必须设置为true，fillColor才有效
                               contentPadding: EdgeInsets.all(2),
                               border:  OutlineInputBorder(
                                 borderRadius:BorderRadius.all(Radius.circular(4.0)),
                                 borderSide: BorderSide(
                                   color: Colors.transparent,
                                 ),
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius:BorderRadius.all(Radius.circular(4.0)),
                                 borderSide: BorderSide(
                                   color: Colors.transparent,
                                 ),
                               ),
                               disabledBorder: OutlineInputBorder(
                                 borderRadius:BorderRadius.all(Radius.circular(4.0)),
                                 borderSide: BorderSide(
                                   color: Colors.transparent,
                                 ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius:BorderRadius.all(Radius.circular(4.0)),
                                 borderSide: BorderSide(
                                   color: Colors.transparent,
                                 ),
                               )
                           ),
                         )
                     ),
                     const SizedBox(width: 10.0),
                     Image.asset('assets/images/mood.png',width: 30),
                     const SizedBox(width: 10.0),
                     searchValue==''?
                     Image.asset('assets/images/message_add.png',width: 30):
                     SizedBox(
                       width: 50.0,
                       height: 30.0,
                       child: ElevatedButton(
                         style: ButtonStyle(
                             padding: MaterialStateProperty.all(
                                 const EdgeInsets.all(5)
                             )
                         ) ,
                         onPressed: () {  },
                         child: GestureDetector(
                           child: const Text('发送'),
                           onTap: (){
                             setState(() {
                               searchValue = '';
                               textEditingController.clear();
                             });
                           },
                         ),
                       ),
                     )
                   ],
                 ),
               ) ,
             )
           ],
         )
     );
   }
}
