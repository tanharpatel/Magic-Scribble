import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nothing/Screens/ImagePage.dart';
import 'package:swipedetector/swipedetector.dart';

class Home extends StatefulWidget {
  static final String id = "Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String pattern = "";
  var timer;
  @override
  Widget build(BuildContext context) {
    timer = Timer(Duration(seconds: 10), () => setState(() {pattern = "";}));
    return SwipeDetector(
      onSwipeRight: (){setState(() {
        pattern = pattern + "right "; print(pattern);
      });},
      onSwipeLeft: (){setState(() {
        pattern = pattern + "left "; print(pattern);
      });},
      onSwipeUp: (){setState(() {
        pattern = pattern + "up "; print(pattern);
      });},
      onSwipeDown: (){setState(() {
        pattern = pattern + "down "; print(pattern);
      });},
      child: isPattern() ? react() : Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Welcome to Magic Scribble!!!!!", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Caveat", decoration: TextDecoration.none),
        )),
      ),
    );
  }

  react() {
    timer.cancel();
    Timer(Duration(milliseconds: 1), () => Navigator.popAndPushNamed(context, ImagePage.id));
  }

  isPattern() {
    if(pattern == "up down " || pattern == "up right " || pattern == "up left " || pattern == "up up " ||
      pattern == "right left " || pattern == "right up " || pattern == "right down " || pattern == "right right " ||
      pattern == "left down " || pattern == "left right " || pattern == "left up " || pattern == "left left " ||
      pattern == "down left " || pattern == "down right " || pattern == "down up " || pattern == "down down ") {
      return true;
    } else {
      return false;
    }
  }
}