import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  ArticleScreen({Key key}) : super(key: key);
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void iniState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("推文"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TabBar(
                // indicator: ,
                controller: _tabController,
                tabs: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        /*   image: DecorationImage(
                            image: Image.asset("images/home/"),
                          ),*/
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        "失眠精选",
                        // child: ,
                      ),
                    ),
                  ),
                  Tab(
                    text: "失眠精选",
                  ),
                  Tab(
                    text: "失眠精选",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child: Text('It\'s cloudy here'),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
          ],
        ),
      ),
    );
  }
}
