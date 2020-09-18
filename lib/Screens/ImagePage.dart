import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nothing/Screens/DrawingBoard.dart';
import 'package:nothing/Screens/VideoPage.dart';
import 'package:shake/shake.dart';

class ImagePage extends StatefulWidget {
  static final String id = "Image";

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  Image imageToShow = Image.asset("assets/logo.jpg");
  ShakeDetector detector;
  int shake = 0;

  @override
  void initState() {
    detector = ShakeDetector.autoStart(
      onPhoneShake: () {shake++; changeImage();}
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    body:Stack(
children: [
   Center(
     child: Container(
          color: Colors.white,
          child: imageToShow,
        ),
   ),
      Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                 height: 150,
                width: 150,

                child: RaisedButton(
                   color: Colors.white,
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CanvasPainting()),
                  );
                }),
              )),
               Positioned(
              top: 0,
              left: 0,
              child: Container(
                
                height: 150,
                width: 150,
                child: OutlineButton(
                  color: Colors.white,
                  disabledBorderColor:Colors.white,

                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoPage()),
                  );
                }),
              )),
],
    ),
          

    );
  }

  changeImage() {
    if(shake == 1) {
      setState(() {
        imageToShow = Image.asset("assets/1.jpg");
      });
    } else if(shake == 10) {
      setState(() {
        imageToShow = Image.asset("assets/10.jpg");
      });
    } else if(shake == 20) {
      setState(() {
        imageToShow = Image.asset("assets/20.jpg");
      });
    } else if(shake == 30) {
      setState(() {
        imageToShow = Image.asset("assets/30.jpg");
      });
    } else if(shake == 40) {
      setState(() {
        imageToShow = Image.asset("assets/40.jpg");
      });
    } else if(shake == 50) {
      setState(() {
        imageToShow = Image.asset("assets/50.jpg");
      });
    } else if(shake == 60) {
      setState(() {
        imageToShow = Image.asset("assets/60.jpg");
      });
    } else if(shake == 70) {
      setState(() {
        imageToShow = Image.asset("assets/70.jpg");
      });
    } else if(shake == 80) {
      setState(() {
        imageToShow = Image.asset("assets/80.jpg");
      });
    } else if(shake == 90) {
      setState(() {
        imageToShow = Image.asset("assets/90.jpg");
      });
    } else if(shake == 100) {
      setState(() {
        imageToShow = Image.asset("assets/100.jpg");
      });
      detector.stopListening();
      Timer(Duration(seconds: 2), () => Navigator.popAndPushNamed(context, VideoPage.id));
    }
  }
}