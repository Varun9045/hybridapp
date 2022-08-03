import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 90,),
            CircleAvatar(
              radius: 74,
              backgroundImage: AssetImage('assets/images/hand_icon.png'),
              backgroundColor: Colors.lightBlue,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Welcome Back',style: TextStyle(
                color: Colors.black54,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Text('Sign in to continue',style: TextStyle(
              fontSize: 16.0
            ),),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(30,20,30,10),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Phone Number*',style: TextStyle(
                        fontSize: 16.0,
                    ),),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.0,
                            style: BorderStyle.solid
                          )
                        ),
                        child: DropdownMenuItem(child: Text('data')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 210,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.lightBlueAccent,
                                width: 1.0,
                                style: BorderStyle.solid
                            ),),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                                child: Center(child: Text('+91')),
                              ),
                              SizedBox(width: 8.0,),
                              new Expanded(child:
                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter phone number'
                                ),
                              ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0,),

                  SizedBox(
                    height: 45.0,
                    width: 250.0,
                    child: RaisedButton(onPressed: (){},
                    child: Text('Login'),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
