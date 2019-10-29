import 'package:flutter/material.dart';
import 'package:flutterstagram/main.dart';

class MainTabsContainer extends StatefulWidget {
  static const routeName = 'main-tabs-container';

  createState() => _MainTabsContainerState();
}

class _MainTabsContainerState extends State<MainTabsContainer> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    MyHomePage(),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentTabIndex,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: SizedBox(height: 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: SizedBox(height: 0),
          )
        ],
      ),
    );
  }
}
