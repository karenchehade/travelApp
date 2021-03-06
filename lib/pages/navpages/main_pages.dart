// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './bar_item_page.dart';
import './my_page.dart';
import './search_page.dart';
import '../home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex =  index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: 'bar', icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'my', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
