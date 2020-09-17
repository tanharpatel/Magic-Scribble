import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nothing/Screens/DrawingBoard.dart';
import 'package:nothing/Screens/Home.dart';
import 'package:nothing/Screens/ImagePage.dart';
import 'package:nothing/Screens/VideoPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        Home.id: (context) => Home(),
        ImagePage.id: (context) => ImagePage(),
        VideoPage.id: (context) => VideoPage(),
        CanvasPainting.id: (context) => CanvasPainting(),
      },
    ),
  );
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () => Navigator.popAndPushNamed(context, Home.id));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/logo.jpg", height: 200,),
          SizedBox(height: 30,),
          Center(child: Text("Magic Scribble", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)),
          SizedBox(height: 50,),
          SpinKitChasingDots(color: Colors.black, size: 60),
        ],
      ),
    );
  }
}