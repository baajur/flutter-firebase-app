import 'package:derm_detect/services/auth.dart';
import 'package:flutter/material.dart';
import 'tflite_home.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('Object Detection'),
        backgroundColor: Colors.cyan[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async { 
              await _auth.signOut();

            },
          ),

        ],
      ),
      body: TfliteHome(),
      
    );
  }
}