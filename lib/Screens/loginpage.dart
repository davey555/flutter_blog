import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LoginPage extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 100),
          Stack(children: [
            Positioned(
              left: 10,
              top: 15,
              child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Blog Sign In',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                  )),
            ),
          ]),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText: "Password"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text('forgot your password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                onPressed: () => Navigator.pushNamed(context, 'bloghome'),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )),
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign IN'.toUpperCase(),
                        style: TextStyle(fontSize: 27)),
                    SizedBox(width: 30),
                    Icon(Icons.arrow_right, size: 40),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            OutlineButton.icon(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 9),
              focusColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              highlightColor: Colors.red,
              onPressed: () {},
              highlightedBorderColor: Colors.red,
              borderSide: BorderSide(color: Colors.red),
              textColor: Colors.red,
              icon: Icon(EvaIcons.google),
              label:
                  Text('Google', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            OutlineButton.icon(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 9),
              focusColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              highlightColor: Colors.green,
              onPressed: () {},
              highlightedBorderColor: Colors.blue,
              borderSide: BorderSide(color: Colors.blue),
              textColor: Colors.blue,
              icon: Icon(
                EvaIcons.facebook,
                color: Colors.blue,
              ),
              label: Text('Facebook',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            )
          ])
        ]),
      )),
    );
  }
}
