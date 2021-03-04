import 'package:flutter/material.dart';

import '../bottom_bar_data.dart';

class BottomBar extends StatefulWidget {
  final BottomBarStore barStore;
  BottomBar(this.barStore);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      print("index==$index");
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.barStore.generateBottomBarItem(),
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      onTap: _onItemTapped,
      selectedItemColor: Colors.teal[800],
      selectedIconTheme: IconThemeData(color: Colors.purpleAccent),
      unselectedIconTheme: IconThemeData(color: Colors.blue),
    );
  }
}
