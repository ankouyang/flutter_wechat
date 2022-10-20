import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/contacts/contact_header.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: const [
            ContactHeader()
          ],
        ),
    );
  }
}
