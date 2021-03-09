import 'package:flutter/material.dart';
import 'package:flutter_origin/ui/navigation/component/bottom_bar.dart';
import 'package:flutter_origin/ui/navigation/component/bottom_bar_data.dart';
import 'package:flutter_origin/ui/navigation/view_data.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: MaterialColor(50, {50: Color.fromARGB(255, 10, 10, 0)}),
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//这里就是关键的代码，定义一个key
  BottomBarStore barStore = BottomBarStore();
  void initState() {
    super.initState();
    barStore.add(BottomBarData("images/navigation/index.png",
        selectImage: "images/navigation/index2.png", label: "首页"));
    barStore.add(BottomBarData("images/navigation/community.png",
        selectImage: "images/navigation/community2.png", label: "推文"));
    barStore.add(BottomBarData("images/navigation/shopp.png",
        selectImage: "images/navigation/shopp2.png", label: "专家"));
    barStore.add(BottomBarData("images/navigation/my.png",
        selectImage: "images/navigation/my2.png", label: "我的"));
  }

  void changeValue(int value) {
    setState(() {
      barStore.startIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*    appBar: AppBar(
        title: Text(barsText.elementAt(barStore.startIndex)), //widget.title
        centerTitle: true,
      ),*/
      body: bottomScreens.elementAt(barStore.startIndex),
      bottomNavigationBar: BottomBar(
        barStore,
        changeValue,
      ),
    );
  }
}
