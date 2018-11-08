import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:app/screens/courses/courses.dart';
import 'package:app/screens/colleges/colleges.dart';
import 'package:app/screens/dashboard.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationPage createState() => _NavigationPage();
}

class Choice {
  const Choice({this.value, this.title, this.icon});

  final int value;
  final String title;
  final IconData icon;
}

class _NavigationPage extends State<Navigation> {
  SharedPreferences prefs;
  int _currentIndex = 0;
  final List<Widget> _children = [Dashboard(), Colleges(), Courses()];

  List<Choice> choices = const <Choice>[
    const Choice(value: 0, title: 'Log Out', icon: Icons.arrow_back),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akedu'),
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text('Colleges')),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), title: Text('Courses')),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _select(Choice choice) {
    switch (choice.value) {
      case 0:
        {
          clearData();
          Navigator.of(context).pushReplacementNamed('/');
        }
        break;
    }
  }

  clearData() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
