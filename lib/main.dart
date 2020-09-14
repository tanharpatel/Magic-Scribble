import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nothing/Screens/Home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue[800],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),        
        Home.id: (context) => Home(),
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
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, Home.id));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/logo.png", height: 200,),
          SizedBox(height: 30,),
          Center(child: Text("App Name", style: TextStyle(color: Colors.blue[800], fontSize: 25, fontWeight: FontWeight.bold),)),
          SizedBox(height: 50,),
          SpinKitRipple(color: Colors.blue[800], size: 60),
        ],
      ),
    );
  }
}