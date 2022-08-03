
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EachPage.dart';
import 'Login.dart';

class IntroSlider extends StatefulWidget {
  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  PageController controller= PageController();
  final messages = ["Book a high-quality and reliable cleaner for your beautiful home Our All cleaners are certified, It only takes a short time to make a booking.",
    "Our cleaning experts provide the highest quality cleaning services you can always count on, we\'ll help you make your home dazzling and bright.",
    "The environment of your home reflects your lifestyle, and standard of living, so make your home upstanding and dignified. we are always ready to help you, choose your suitable time and book the service."
  ];
  final images = [
    'assets/images/img_1.png',
    'assets/images/slide_img2.png',
    'assets/images/slide_img3.png'
  ];
  int numberOfPages=3;
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height/10.5,
            child: Center(child: Text('Home Cleaning\nService', textAlign: TextAlign.center,style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,

            ),)
            ),
          ),
          Container(
            height: height/1.65,
            child:
          PageView.builder(
            controller: controller,
            itemCount: numberOfPages,
            itemBuilder: (BuildContext context, int index) {
              return EachPage(messages[index], images[index]);
            },
          ),),

          Container(
            height: height/10.5,
            child: Center(child:
            RaisedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
              color: Colors.amber,
            child: Text('Get Started'),
            textColor: Colors.white,
            )),
          )

        ],
      ),
    );
  }
}
