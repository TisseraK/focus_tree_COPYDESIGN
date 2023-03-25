import 'package:flutter/material.dart';

Widget greenBouton(var _h, var _w, void function, String title) {
  return GestureDetector(
    onTap: () => function,
    child: Container(
      height: _h * 0.075,
      width: _w * 0.9,
      margin: EdgeInsets.only(top: _h * 0.025),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: _h * 0.025,
              color: Colors.white),
        ),
      ),
    ),
  );
}
