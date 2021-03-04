import 'package:flutter/material.dart';
import 'package:flutter_origin/ui/navigation/bottom.dart';
import 'package:flutter_origin/ui/navigation/bottom_bar_data.dart';
import 'package:flutter_origin/ui/navigation/component/bottom_bar.dart';

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomBarStore barStore = BottomBarStore();
  void initState() {
    super.initState();
    barStore.add(BottomBarData("images/navigation/community.png", "首页"));
    barStore.add(BottomBarData("images/navigation/community.png", "哈哈"));
    print("12");
    print(barStore.bottoms.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          // child: bottomScreens.elementAt(_selectedIndex),
          ),
      // bottomNavigationBar: buildWidget(),
      bottomNavigationBar: BottomBar(barStore),
    );
  }

  Widget buildWidget() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            /*Image.asset(
                "images/navigation/index.png",*/
            label: "首页",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
          icon: Image.asset(
            'images/navigation/community.png',
            width: 40,
            height: 40,
          ),
          label: "推文",
          backgroundColor: Colors.green,
        ),
        // BottomNavigationBarItem(
        //     icon: Image.asset(
        //       'images/navigation/shopp.png',
        //       width: 40,
        //       height: 40,
        //     ),
        //     label: "专家",
        //     backgroundColor: Colors.purpleAccent),
        // BottomNavigationBarItem(
        //     backgroundColor: Colors.teal,
        //     icon: Image.asset(
        //       'images/navigation/my.png',
        //       width: 40,
        //       height: 40,
        //     ),
        //     label: "我的"),
      ],
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.teal[800],
      selectedIconTheme: IconThemeData(color: Colors.purpleAccent),
      unselectedIconTheme: IconThemeData(color: Colors.blue),
    );
  }
}
