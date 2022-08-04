
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeDashBoard.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.lightBlue,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Create Account',style: TextStyle(
                color: Colors.black54,
                fontSize: 28.0,
              ),),
            ),
            Text('Create a New Account',),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('First Name*',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'First Name'


                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Last Name*',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last Name'

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Email*',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email'


                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Phone Number*',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 8,),
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
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
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.network('http://fast-hand.ml/uploads/flags/india-flag.png'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 225,
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
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(20, 2, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Country*',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Country'


                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            SizedBox(
              height: 45.0,
              width: 200.0,
              child: RaisedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeDashBoard()),
                );
              },
                child: Text('Create Account',style: TextStyle(fontSize: 18.0),),
                color: Colors.lightBlue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),),
            ),
          ],
        ),
      ),
    );
  }
}
