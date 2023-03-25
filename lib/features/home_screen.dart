import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../core/bottomBar.dart';
import '../core/button.dart';
import '../core/text.Dart';
import '3dTree/3dTree.dart';
import 'focus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

CarouselController carouselController = CarouselController();
List<Widget> listWidgetHome = [MyHomePage()];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            height: _h,
            width: _w,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: false,
                height: _h,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                aspectRatio: 9 / 16,
                viewportFraction: 1,
              ),
              items: listWidgetHome,
            ),
          ),
          Container(
            height: _h * 0.95,
            width: _w,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: bottomBarFocusTree(_h, _w, carouselController),
            ),
          )
        ],
      ),
    ));
  }

  Widget appBarFocusTree(var _h, var _w, int day) {
    return Container(
      height: _h * 0.15,
      width: _w * 0.9,
      padding: EdgeInsets.only(top: _h * 0.075),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Good evening',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: _h * 0.03),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.flag,
                  color: Colors.orange,
                  size: _h * 0.04,
                ),
                Text(
                  '$day',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: _h * 0.03,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
