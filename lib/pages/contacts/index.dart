import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/contacts/contact_list.dart';
import 'package:flutter_wechat/pages/contacts/contact_silder_list.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  goToSliderKey(key){
      childContactListKey.currentState?.goToSessionKey(key);
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
            ContactList(
             key: childContactListKey,
           ),
           Positioned(
            top: 50.0,
            right: 0.0,
            width: 20.0,
            height: 600,
            child: ContactSliderList(callBack:goToSliderKey),
          ),
        ],
    );
  }
}