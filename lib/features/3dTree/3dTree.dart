import 'package:flutter/material.dart';

Widget treeContainer(
  var _h,
  var _w,
) {
  return Container(
    decoration:
        BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
    height: _h * 0.45,
    width: _w,
  );
}
