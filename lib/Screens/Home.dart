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
        pattern = pattern + "right ";
      });},
      onSwipeLeft: (){setState(() {
        pattern = pattern + "left ";
      });},
      onSwipeUp: (){setState(() {
        pattern = pattern + "up ";
      });},
      onSwipeDown: (){setState(() {
        pattern = pattern + "down ";
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
    if(pattern == "up up down down " ||
      pattern == "right left up down " ||
      pattern == "right left down up " ||
      pattern == "right up left down " ||
      pattern == "right down up left " ||
      pattern == "right up left down " ||
      pattern == "right down left up " ||
      pattern == "up left down right " ||
      pattern == "up right left down " ||
      pattern == "right left right left ") {
      return true;
    } else {
      return false;
    }
  }
}