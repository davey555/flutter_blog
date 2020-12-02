import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BlogFeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(EvaIcons.arrowBack)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(EvaIcons.moreHorizotnal, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Business'.toUpperCase()),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  )),
              Row(
                children: [
                  Icon(EvaIcons.clockOutline, size: 15, color: Colors.black),
                  SizedBox(width: 4),
                  Text('50 Mins Ago'),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text('Flutter Tips and Tricks',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30),
          Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/third.png'),
                  ))),
          SizedBox(height: 30),
        ]),
      ),
    );
  }
}
