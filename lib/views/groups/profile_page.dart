import 'package:Chit_Chat_app/services/auth.dart';
import 'package:Chit_Chat_app/views/TabViewController.dart';
import 'package:Chit_Chat_app/views/groups/home_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  final String userName;
  final String email;
  final AuthService _auth = AuthService();

  ProfilePage({this.userName, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 27.0, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black87,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back
          ),onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TabViewController()));
          },
        ),
        elevation: 0.0,  
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 170.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.account_circle, size: 200.0, color: Colors.grey[700]),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Full Name', style: TextStyle(fontSize: 17.0)),
                  Text(userName, style: TextStyle(fontSize: 17.0)),
                ],
              ),

              Divider(height: 20.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Email', style: TextStyle(fontSize: 17.0)),
                  Text(email, style: TextStyle(fontSize: 17.0)),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}