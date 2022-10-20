import 'package:flutter/material.dart';
import 'package:flutter_wechat/model/contact.dart';

class ContactItem extends StatelessWidget {
  final ContactData contact;
  final bool  isStaticImg;
  const ContactItem({Key? key,required this.contact, required this.isStaticImg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 5,left: 10,bottom: 5.0),
      height: 55.0,
      decoration: const BoxDecoration(
          color: Colors.white,
          border:Border(bottom: BorderSide(width: 0.5,color: Color(0xffe4e4e4)))
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child:ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child:isStaticImg?Image.asset('${contact.img}',width: 50.0,height:50.0,fit: BoxFit.contain):Image.network('${contact.img}',width: 55.0,height:55.0,fit: BoxFit.contain)
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            constraints: const BoxConstraints(
                maxWidth: 200.0
            ),
            child:   Text('${contact.name}',style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );;
  }
}
