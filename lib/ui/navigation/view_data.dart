import 'package:flutter/material.dart';
import 'package:flutter_origin/ui/article/article_screen.dart';
import 'package:flutter_origin/ui/home/home_screen.dart';
import 'package:flutter_origin/ui/navigation/component/bottom_bar_data.dart';

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

List<String> barsText = ["首页", "推文", "精选", "我的"];

List<Widget> bottomScreens = [
  HomeScreen(),
  ArticleScreen(),
  HomeScreen(),
  HomeScreen(),
];

/*
Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
    'Index 1: Business',
    style: optionStyle,
  ),
  Text(
    'Index 2: School',
    style: optionStyle,
  ),
  Text(
    'Index 3: Settings',
    style: optionStyle,
  ),*/

class HomeViewData {
  static final List<BottomBarData> bars = [
    BottomBarData("images/home/sleep.png", label: "睡眠"),
    BottomBarData("images/home/depress.png", label: "抑郁"),
    BottomBarData("images/home/tongue.png", label: "舌诊"),
    BottomBarData("images/home/body.png", label: "体质"),
    BottomBarData("images/home/other.png", label: "其他"),
  ];

  static final List<BottomBarData> swipers_local = [
    BottomBarData("images/home/swiper1.jpg",
        label: "https://mp.weixin.qq.com/s/CkR8BgGnZsMWkrm844fW1g"),
    BottomBarData("images/home/swiper2.jpg",
        label: "https://mp.weixin.qq.com/s/5hmRoU5jUdREwq4tu3b5fA"),
  ];

  static final List<BottomBarData> swipers = [
    BottomBarData("images/home/swiper1.jpg",
        label: "https://mp.weixin.qq.com/s/CkR8BgGnZsMWkrm844fW1g"),
    BottomBarData("images/home/swiper2.jpg",
        label: "https://mp.weixin.qq.com/s/5hmRoU5jUdREwq4tu3b5fA"),
  ];
}
