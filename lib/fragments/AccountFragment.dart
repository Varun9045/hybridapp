import 'package:flutter/material.dart';

import 'Profile.dart';

class AccountFragment extends StatefulWidget {
  const AccountFragment({Key? key}) : super(key: key);

  @override
  State<AccountFragment> createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  final double coverHeight = 140;
  final double profileHeight = 140;
  final double cardHeight = 55;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
    body: ListView(
      padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
    ),
    );
  }

  Widget buildContent() => Column(
    children: <Widget>[
      SizedBox(height: 6,),
      Text('Varun Kumar',style: TextStyle(
        fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black54,
      ),),
      SizedBox(height: 4 ,),
      Text('varunbaliyan123@gmail.com',style: TextStyle(
        fontSize: 16,color: Colors.black38,
      ),),
      Text('+91 9760152776',style: TextStyle(
        fontSize: 16,color: Colors.black38,
      ),),
      SizedBox(height: 8,),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Card(
          child: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 8),
                  child: Icon(Icons.person,color: Colors.black38,size: 24 ,),
                ),
                Text('Profile',style: TextStyle(fontSize: 16),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 8),
                child: Icon(Icons.calendar_month,color: Colors.black38,size: 24 ,),
              ),
              Text('Booking',style: TextStyle(fontSize: 16),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
              )
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 8),
                child: Icon(Icons.location_on,color: Colors.black38,size: 24 ,),
              ),
              Text('Address',style: TextStyle(fontSize: 16),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
              )
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 8),
                child: Icon(Icons.support_agent,color: Colors.black38,size: 24 ,),
              ),
              Text('Support',style: TextStyle(fontSize: 16),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
              )
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 8),
                child: Icon(Icons.note_alt_sharp,color: Colors.black38,size: 24 ,),
              ),
              Text('Terms and Conditions',style: TextStyle(fontSize: 16),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
              )
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 8),
                child: Icon(Icons.logout,color: Colors.black38,size: 24 ,),
              ),
              Text('logout',style: TextStyle(fontSize: 16),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios,color: Colors.lightBlue,),
              )
            ],
          ),
        ),
      ),
    ],
  );
  Widget buildCover() => Container(
    color: Colors.lightBlue,
    width: double.infinity,
    height: coverHeight,
  );


  Widget buildTop(){
    final top = coverHeight-profileHeight/2.4;
    final bottom = profileHeight/2.4;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
            child: buildCover()),
        Positioned(
            top: top,
            child: buildProfileImage()),
      ],
    );
  }

  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight/2.5,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: NetworkImage(''
        'http://fast-hand.ml/uploads/profile/62e12fbbbc16c-1658924987.jpg'),
  );
}
