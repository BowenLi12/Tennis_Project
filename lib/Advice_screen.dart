import 'package:flutter/material.dart';
import 'Record_screen.dart';
import 'Result_screen.dart';
import 'HomePage.dart';

class advice_screen extends StatefulWidget {
  const advice_screen({super.key});

  @override
  State<advice_screen> createState() => _advice_screenState();
}

class _advice_screenState extends State<advice_screen> {
  int currentPageIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
      setState(() {
        currentPageIndex = index;
      });
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const record_screen()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const result_screen()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const advice_screen()),
          );
      };
    },
    destinations: const <Widget>[
    NavigationDestination(
    icon: Icon(Icons.home),
    label: 'Home',
    ),
    NavigationDestination(
    icon: Icon(Icons.camera),
    label: 'Record',
    ),
    NavigationDestination(
    icon: Icon(Icons.list),
    label: 'Result',
    ),
    NavigationDestination(
    icon: Icon(Icons.chat_bubble),
    label: 'Advice',
    ),
    ],
    ),
    );
  }
}

