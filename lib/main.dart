import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gradient_text/gradient_text.dart';
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
          Image.asset("assets/logo.png", height: 200,),
          SizedBox(height: 30,),
          Center(child: GradientText(
              "Magic Scribble", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.pink,
                Colors.purple,
                Colors.deepPurple,
                Colors.deepPurple,
                Colors.indigo,
                Colors.blue,
                Colors.lightBlue,
                Colors.cyan,
                Colors.teal,
                Colors.green,
                Colors.lightGreen,
                Colors.lime,
                Colors.yellow,
                Colors.amber,
                Colors.orange,
                Colors.deepOrange,
              ]),
          ),),
          SizedBox(height: 50,),
          SizedBox(
            height: 80,
            child: ShaderMask(
              shaderCallback: (bounds) => RadialGradient(
                center: Alignment.center,
                colors: [
                  Colors.red,
                  Colors.pink,
                  Colors.purple,
                  Colors.deepPurple,
                  Colors.deepPurple,
                  Colors.indigo,
                  Colors.blue,
                  Colors.lightBlue,
                  Colors.cyan,
                  Colors.teal,
                  Colors.green,
                  Colors.lightGreen,
                  Colors.lime,
                  Colors.yellow,
                  Colors.amber,
                  Colors.orange,
                  Colors.deepOrange,
                ]).createShader(bounds),
              child: SpinKitChasingDots(color: Colors.white, size: 70),
            ),
          ),
        ],
      ),
    );
  }
}