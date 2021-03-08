import 'package:flutter/material.dart';
import 'package:flutter_origin/ui/main/home_screen.dart';
import 'package:flutter_origin/ui/navigation/component/bottom_bar_data.dart';

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
List<Widget> bottomScreens = [
  HomeScreen(),

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
];

class HomeViewData {
  static final List<BottomBarData> bars = [
    BottomBarData("images/home/insomnia.png", label: "睡眠"),
    BottomBarData("images/home/depressed.png", label: "抑郁"),
    BottomBarData("images/home/diagnosis.png", label: "舌诊"),
    BottomBarData("images/home/Constitution.png", label: "体质"),
    BottomBarData("images/home/Other.png", label: "其他"),
  ];

  static final List<BottomBarData> swipers_local = [
    BottomBarData("images/home/swiper1.png",
        label: "https://mp.weixin.qq.com/s/CkR8BgGnZsMWkrm844fW1g"),
    BottomBarData("images/home/swiper2.png",
        label: "https://mp.weixin.qq.com/s/5hmRoU5jUdREwq4tu3b5fA"),
  ];

  static final List<BottomBarData> swipers = [
    BottomBarData(
        "https://iik-ap1.oss-cn-shanghai.aliyuncs.com/images/7/2020/06/fv3Vw8zZ483B2tyWYi35X4IdvxkbwA.png",
        label: "https://mp.weixin.qq.com/s/CkR8BgGnZsMWkrm844fW1g"),
    BottomBarData(
        "https://iik-ap1.oss-cn-shanghai.aliyuncs.com/images/2/2019/09/amhosBtACVMoMmjGDgtBc4EHb72Mcu.jpg",
        label: "https://mp.weixin.qq.com/s/5hmRoU5jUdREwq4tu3b5fA"),
  ];
}
