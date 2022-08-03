
import 'dart:async';

import 'package:flutter/material.dart';

import 'IntroSlider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            image: DecorationImage(
                image: AssetImage('assets/images/background_img.png'),

                fit: BoxFit.cover
            )
        ),

        child: Center(
          child: Image.asset('assets/images/splash_hand.png'),
        )
      ),
    );
  }

  Future<Timer> startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => IntroSlider()
    )
    );
  }
}
