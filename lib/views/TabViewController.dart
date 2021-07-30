
import 'package:Chit_Chat_app/views/chatRoomScreen.dart';
import 'package:Chit_Chat_app/views/groups/home_page.dart';
import 'package:flutter/material.dart';

class TabViewController extends StatefulWidget {
  TabViewController({Key key}) : super(key: key);

  @override
  _TabViewControllerState createState() =>
      _TabViewControllerState();
}

class _TabViewControllerState
    extends State<TabViewController> {
  int tabIndex = 0;
  final tabs = [
    HomePage(),
    ChatRoom(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              title: Text(
                'Groups',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Chats'),
            ),
          ]),
    );
  }
}
