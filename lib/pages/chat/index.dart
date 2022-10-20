import 'package:flutter/material.dart';
import './message_item.dart';
import 'package:flutter_wechat/model/message_data_info.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageDataInfo.length,
        itemBuilder: (BuildContext context,int index){
              return  MessageItem(message: messageDataInfo[index]);
        }
    );
  }
}
