import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import 'CreateAccount.dart';
import 'HomeDashBoard.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Image(image: AssetImage('assets/images/verify.png'),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Verification',style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text('You will get a otp via SMS',),
              SizedBox(height: 30,),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(30,20,30,0),
                  child: TextFieldPin(
              autoFocus: true,
              codeLength: 4,
              alignment: MainAxisAlignment.center,
              defaultBoxSize: 46.0,
              margin: 10,
              selectedBoxSize: 46.0,
              textStyle: TextStyle(fontSize: 16,color:Colors.black54),


              onChange: (code) {}
              ),),

              Text('Don\'t receive the OTP?',style: TextStyle(fontSize: 14),),
              SizedBox(height: 30,),
              SizedBox(
                height: 45.0,
                width: 200.0,
                child: RaisedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeDashBoard()),
                  );
                },
                  child: Text('Verify'),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0,40,20.0,20),
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    TextSpan(
                      text: 'Create account',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreateAccount()),
                          );
                        }
                    ),
                  ]
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
