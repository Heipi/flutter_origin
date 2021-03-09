// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:flutter_origin/ui/navigation/view_data.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'dart:ui' as ui;

/*class platformViewRegistry {
  static registerViewFactory(String viewId, dynamic cb) {}
}*/

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    /*ui.platformViewRegistry.registerViewFactory(
        'image_view',
        (int viewId) => ImageElement(
            width: 800,
            height: 200,
            src:
                "https://iik-ap1.oss-cn-shanghai.aliyuncs.com/images/7/2020/06/fv3Vw8zZ483B2tyWYi35X4IdvxkbwA.png"));
*/
    super.initState();
  }

/*ImageElement(
            width: 800,
            height: 200,
            src:
                "https://iik-ap1.oss-cn-shanghai.aliyuncs.com/images/7/2020/06/fv3Vw8zZ483B2tyWYi35X4IdvxkbwA.png"))

   HtmlElementView(
              viewType: 'image_view',
            )
* */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("首页"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              //https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2583035764,1571388243&fm=26&gp=0.jpg
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.asset(
                    HomeViewData.swipers_local[index].assetImage,
                    fit: BoxFit.fill,
                  ); //Image.network(HomeViewData.swipers[index].assetImage)
                },
                itemCount: 2,
                pagination: SwiperPagination(),
                control: SwiperControl(),
                onTap: (index) {},
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.builder(
                  //解决Vertical viewport was given unbounded height.
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 100,
                      crossAxisSpacing: 10),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TextButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              child: Image.asset(
                                  HomeViewData.bars[index].assetImage),
                            ),
                            Text(
                              HomeViewData.bars[index].label,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ));
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 150,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/home/feed_bg.png")),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: IconButton(
                    alignment: Alignment.bottomLeft,
                    icon: Image.asset(
                      "images/home/advice_btn.png",
                      fit: BoxFit.fill,
                      scale: 1.5,
                    ),
                    onPressed: () {}),
              ),
            ),
            /*       Container(
              width: MediaQuery.of(context).size.width - 60,
              padding: EdgeInsets.only(bottom: 10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    child: Image.asset(
                      "images/home/feed_bg.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: IconButton(
                        icon: Image.asset(
                          "images/home/advice_btn.png",
                          fit: BoxFit.fill,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),*/
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: buildContainer(
                        context, "images/home/emotion.png", "情绪与\n睡眠管理"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: buildContainer(
                          context, "images/home/notice.png", "\n活动公告")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(
      BuildContext context, String assetImage, String text) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(assetImage)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 15,
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
