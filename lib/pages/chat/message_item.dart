import 'package:flutter/material.dart';
import 'package:flutter_wechat/model/message_data_info.dart';



class MessageItem extends StatelessWidget {
  final MessageDataInfo message;
  const MessageItem({Key? key,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 10,left: 15,bottom: 10.0),
          height: 75.0,
          decoration: const BoxDecoration(
             color: Colors.white,
             border:Border(bottom: BorderSide(width: 0.5,color: Color(0xffe4e4e4)))
          ),
           child: Row(
             children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child:ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      child:Image.network('${message.avatar}',width: 55.0,height:55.0,fit: BoxFit.contain,)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15.0),
                  constraints: const BoxConstraints(
                    maxWidth: 200.0
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${message.title}',style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('${message.subTitle}',style: const TextStyle(color: Color(0xffadadad)),overflow:TextOverflow.ellipsis,maxLines: 1),
                      ],
                  ),
                ),
                Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                            top: 10.0,
                            right: 15.0,
                            child: Text('${message.time}',style: const TextStyle(color: Color(0xffadadad))),
                        )
                      ],
                    )
                )
             ],
           ),
        );
  }
}
