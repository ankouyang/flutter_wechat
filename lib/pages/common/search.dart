import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 30.0,right: 30.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0,color: Colors.green)
                    )
                  ),
                  child: Row(
                    children:  [
                      const Expanded(
                          child:TextField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            decoration: InputDecoration(
                              hintText: '搜索',
                              border: InputBorder.none
                            ),
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child: const Icon(Icons.mic,color: Color(0xffaaaaaa)),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
