
import 'package:flutter/material.dart';
class EachPage extends StatelessWidget {
  final String message;
  final String image;

  EachPage(this.message, this.image);
  // const EachPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                image,
                fit: BoxFit.scaleDown,
                width: 200,
                height: 200,),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 0),
                  child: Text(message,
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
