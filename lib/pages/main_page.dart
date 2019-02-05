import 'package:flutter/material.dart';

import 'package:slowly/pages/add_friend_page.dart';
import 'package:slowly/pages/drafts_page.dart';
import 'package:slowly/pages/settings_page.dart';
import 'package:slowly/pages/write_letter_page.dart';
import 'package:slowly/custom_icons.dart';
import 'package:slowly/pages/recently_received_page.dart';

class MainPage extends StatefulWidget{
  @override
  MainPageState createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  int currentlySelectedIndex = 0;
  List<Widget> children = <Widget>[];

  @override
  void initState() {
    children.add(RecentlyReceivedPage());
    children.add(DraftsPage());
    children.add(AddFriendPage());
    children.add(WriteLetterPage());
    children.add(SettingsPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentlySelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentlySelectedIndex = index;
          });
        },
        currentIndex: currentlySelectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.slowly),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.pencil),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.menu),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}
