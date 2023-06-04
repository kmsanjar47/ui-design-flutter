import 'package:flutter/material.dart';
import 'package:untitled/first_page.dart';
import 'package:untitled/second_page.dart';
import 'package:untitled/third_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    int bottomNavBarIndex = 2;
    List pages = [FirstPage(), SecondPage(), ThirdPage()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavBarIndex,
        onTap: (value){
          setState(() {
            bottomNavBarIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Third"),
        ],
      ),
      body: pages[bottomNavBarIndex],
    );
  }
}
