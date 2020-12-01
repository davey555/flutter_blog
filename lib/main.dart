import 'package:flutter/material.dart';
import 'Screens/screens.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'loginpage',
        routes: {
          'loginpage': (context) => LoginPage(),
        }));
// google_fonts: ^1.1.1