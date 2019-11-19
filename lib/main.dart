// import 'package:derm_detect/screens/authenticate/authenticate.dart';
import 'package:derm_detect/screens/wrapper.dart';
import 'package:derm_detect/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:derm_detect/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      
      ),
    );
  }
}

