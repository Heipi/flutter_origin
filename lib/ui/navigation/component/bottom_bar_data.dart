import 'package:flutter/material.dart';

class BottomBarData {
  BottomBarData(this.assetImage, {this.selectImage, this.label});
  String assetImage;
  String selectImage;
  String label;
}

class BottomBarStore {
  List<BottomBarData> bottoms;
  int _startIndex = 0;

  BottomBarStore({this.bottoms}) {
    if (bottoms == null) {
      bottoms = List.empty(growable: true);
    }
  }

  int get startIndex => _startIndex;

  set startIndex(int value) {
    _startIndex = value;
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

  String getNavigationImg(BottomBarData barData, int index, int startIndex) {
    if (index == startIndex) {
      return barData.selectImage == null
          ? barData.assetImage
          : barData.selectImage;
    } else {
      return barData.assetImage;
    }
  }

  List<BottomNavigationBarItem> generateBottomBarItem() {
    if (bottoms.isEmpty) {
      throw Exception("bottoms is empty");
    }
    List<BottomNavigationBarItem> widgets = List.empty(growable: true);
    print(bottoms.toString());
    print("Widgets =====" +
        widgets.length.toString() +
        "=index==" +
        "$startIndex");
    for (int i = 0; i < bottoms.length; i++) {
      BottomBarData element = bottoms[i];
      BottomNavigationBarItem barItem = BottomNavigationBarItem(
          icon: Image.asset(
            getNavigationImg(element, i, startIndex),
            width: 40,
            height: 40,
          ),
          label: element.label);
      widgets.add(barItem);
    }
    return widgets;
  }
}
