import 'package:flutter/material.dart';
import 'package:learn_python/nav_pages/bar_item_page.dart';
import 'package:learn_python/home_page.dart';
import 'package:learn_python/nav_pages/my_page.dart';
import 'package:learn_python/nav_pages/quiz_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), QuizPage(), UserPage()];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded), label: 'Bar'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.quiz_rounded), label: 'Quiz'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My')
            ]));
  }
}
