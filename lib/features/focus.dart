import 'package:flutter/material.dart';

import '../core/bottomBar.dart';
import '../core/button.dart';
import '../core/text.Dart';
import '3dTree/3dTree.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _h,
        width: _w,
        child: Column(
          children: [
            appBarFocusTree(_h, _w, 11),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_lesson_outlined,
                  color: Colors.green,
                ),
                focusText(' Let\'s focus'),
              ],
            ),
            treeContainer(_h, _w),
            //Timer
            timerForFocus(_h, _w),
            //button start focus
            greenBouton(_h, _w, () {}, "Focus"),
          ],
        ),
      ),
    );
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

  Widget timerForFocus(
    var _h,
    var _w,
  ) {
    return Container(
      height: _h * 0.1,
      width: _w * 0.9,
      padding: EdgeInsets.only(top: _h * 0.05),
      child: Center(
        child: Text(
          '25 : 00',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: _h * 0.05),
        ),
      ),
    );
  }
}
