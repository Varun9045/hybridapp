import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double containerHeight = 135;
  final double profileHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 16),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: containerHeight,
                  color: Colors.lightBlue,
                  child: Center(
                      child: CircleAvatar(
                        radius: profileHeight/2,
                        backgroundColor: Colors.grey.shade800,
                        backgroundImage: NetworkImage(''
                            'http://fast-hand.ml/uploads/profile/62e12fbbbc16c-1658924987.jpg'),
                      )
                  ),
                ),
                Positioned(
                  right: 90.0,
                  bottom: 40.0,
                  child: new FloatingActionButton(
                    child: const Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    backgroundColor: Colors.lightBlue,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
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
                          hintText: 'First Name',
                          contentPadding: EdgeInsets.all(10),


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
                          contentPadding: EdgeInsets.all(10),
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
                          contentPadding: EdgeInsets.all(10),
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
            SizedBox(height: 10,),
            SizedBox(
              height: 45.0,
              width: 200.0,
              child: RaisedButton(onPressed: (){},
                child: Text('Update Profile',style: TextStyle(fontSize: 16.0),),
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
