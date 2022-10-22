import 'package:flutter/material.dart';
class ContactVo extends StatefulWidget {
  final List<Widget> listContactData;
  final String sessionKey;
  const ContactVo({Key? key, required this.listContactData, required this.sessionKey}) : super(key: key);
  @override
  State<ContactVo> createState() => _ContactVoState();
}
class _ContactVoState extends State<ContactVo> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.only(left: 20.0),
            alignment: Alignment.centerLeft,
            height: 30.0,
            child:  Text(widget.sessionKey,style: const TextStyle(color: Color(0xff6a6a6a))),
          ),
          Column(
            children: widget.listContactData,
          ),
        ],
    );
  }
}
