import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

Widget bottomBarFocusTree(
  var _h,
  var _w,
  CarouselController carouselController,
) {
  return Container(
      height: _h * 0.075,
      width: _w,
      margin: EdgeInsets.only(top: _h * 0.035),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: _h * 0.05,
            width: _w * 0.2,
            child: Column(
              children: [
                Icon(Icons.place_rounded),
                Text('Focus'),
              ],
            ),
          ),
          Container(
            height: _h * 0.05,
            width: _w * 0.2,
            child: Column(
              children: [
                Icon(Icons.mark_email_read_outlined),
                Text('Market'),
              ],
            ),
          ),
          Container(
            height: _h * 0.05,
            width: _w * 0.2,
            child: Column(
              children: [
                Icon(Icons.wallet),
                Text('Wallet'),
              ],
            ),
          ),
          Container(
            height: _h * 0.05,
            width: _w * 0.2,
            child: Column(
              children: [
                Icon(Icons.person),
                Text('User'),
              ],
            ),
          ),
        ],
      ));
}
