/*import 'package:drorji/login.dart';
import 'package:drorji/onboarding.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

class Mainmenu extends StatefulWidget {
  int currentinfex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentinfex,
        onTap: (index)=> currentinfex=index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              label: "Medical card",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: "My health",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue)
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainmenu extends StatefulWidget {
  const mainmenu({Key? key}) : super(key: key);

  @override
  _mainmenuState createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {
  int currentIndex = 0;
  final screens = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        "Medical card",
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        "Health",
        style: TextStyle(fontSize: 60),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 60),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: _hexcolor("#185FE6")),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              label: "Medical card",
              backgroundColor: _hexcolor("#185FE6")),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: "My health",
              backgroundColor: _hexcolor("#185FE6")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: _hexcolor("#185FE6"))
        ],
      ),
    );
  }

  Color _hexcolor(String hex) {
    final hexcode = hex.replaceAll("#", "");
    return Color(int.parse("FF$hexcode", radix: 16));
  }
}
