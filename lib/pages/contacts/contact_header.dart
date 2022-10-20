import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/contacts/contact_item.dart';
import 'package:flutter_wechat/model/contact.dart';

class ContactHeader extends StatefulWidget {
  const ContactHeader({Key? key}) : super(key: key);
  @override
  State<ContactHeader> createState() => _ContactHeaderState();
}

class _ContactHeaderState extends State<ContactHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           ContactItem(contact:ContactData(name:'新的朋友',img:'assets/images/add-friends.png'), isStaticImg: true),
           ContactItem(contact:ContactData(name:'仅聊天的朋友',img:'assets/images/contact-friends.png'),isStaticImg: true),
           ContactItem(contact:ContactData(name:'群聊',img:'assets/images/group.png'),isStaticImg: true),
           ContactItem(contact:ContactData(name:'标签',img:'assets/images/tab.png'),isStaticImg: true),
           ContactItem(contact:ContactData(name:'公众号',img:'assets/images/public.png'),isStaticImg: true),
         ],
    );
  }
}
