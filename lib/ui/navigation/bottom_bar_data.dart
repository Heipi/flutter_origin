import 'package:flutter/material.dart';

class BottomBarData {
  BottomBarData(this.assetImage, this.label);
  String assetImage;
  String label;
}

class BottomBarStore {
  List<BottomBarData> bottoms;

  BottomBarStore({this.bottoms}) {
    if (bottoms == null) {
      bottoms = List.empty(growable: true);
    }
  }

  void add(BottomBarData data) {
    bottoms.add(data);
  }

  void remove(int index) {
    bottoms.removeAt(index);
  }

  void removeBottomData(BottomBarData data) {
    bottoms.remove(data);
  }

  List<BottomNavigationBarItem> generateBottomBarItem() {
    if (bottoms.isEmpty) {
      throw Exception("bottoms is empty");
    }
    List<BottomNavigationBarItem> widgets = List.empty(growable: true);
    print(bottoms.toString());
    print("Widgets =====" + widgets.length.toString());
    bottoms.forEach((element) {
      BottomNavigationBarItem barItem = BottomNavigationBarItem(
          icon: Image.asset(
            element.assetImage,
            width: 40,
            height: 40,
          ),
          label: element.label);
      widgets.add(barItem);
    });
    print("Widgets 2=====" + widgets.length.toString());
    return widgets;
  }
}
