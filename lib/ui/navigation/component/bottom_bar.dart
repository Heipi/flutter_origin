import 'package:flutter/material.dart';

import 'bottom_bar_data.dart';

class BottomBar extends StatefulWidget {
  final BottomBarStore barStore;
  final changeValue;
  // void Function(int value) changeValue;
  BottomBar(this.barStore, this.changeValue, {Key key}) : super(key: key);
  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  int getSelectIndex() {
    print("index=====$_selectedIndex");
    setState(() {});
    return _selectedIndex;
  }
  // int get selectedIndex => _selectedIndex == null ? 0 : _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      print("index==$index");
      _selectedIndex = index;
      widget.barStore.startIndex = index;
      widget.changeValue(index);
      print("index=122221=$selectedIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.barStore.generateBottomBarItem(),
      // currentIndex: _selectedIndex,
      currentIndex: widget.barStore.startIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      onTap: _onItemTapped,
      selectedItemColor: Colors.teal[800],
      selectedIconTheme: IconThemeData(color: Colors.purpleAccent),
      unselectedIconTheme: IconThemeData(color: Colors.blue),
    );
  }
}
