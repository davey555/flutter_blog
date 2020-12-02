import 'package:flutter/material.dart';
import 'Screens/screens.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'loginpage',
        routes: {
          'loginpage': (context) => LoginPage(),
          'bloghome': (context) => BlogHome(), 
          'blogpost' : ( context) => BlogPost(), 
          'blogfeed': (context) => BlogFeed(), 
          'notifications': (context) => Notif(), 
        }));
