import 'package:client_app/screens/Account_page.dart';
import 'package:client_app/screens/HomePage.dart';
import 'package:client_app/screens/library.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 0;
  void switchTab(int index) {
    setState(
      () {
        currentIndex = index;
      },
    );
  }

  List screens = [
    const HomePage(),
    const Library(),
    Container(
      color: Colors.red,
    ),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Colors.pink),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        currentIndex: currentIndex,
        onTap: switchTab,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Library",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/Profile.png"),
            label: "Account",
          )
        ],
      ),
    );
  }
}
