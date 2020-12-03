import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(EvaIcons.arrowBack, color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(EvaIcons.moreHorizotnal, color: Colors.black),
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Notifications',
                style: GoogleFonts.montserrat(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                )),
        ),
      ],), 
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: IconButton(
                color: Colors.black,
                onPressed: () => Navigator.pushNamed(context, 'bloghome'),
                icon: Icon(
                  EvaIcons.personOutline,
                  size: 30,
                ),
              )),
          BottomNavigationBarItem(
              label: 'Posts',
              icon: IconButton(
                color: Colors.black,
                onPressed: () => Navigator.pushNamed(context, 'blogpost'),
                icon: Icon(
                  EvaIcons.heartOutline,
                  size: 30,
                ),
              )),
          BottomNavigationBarItem(
              label: 'Feed',
              icon: IconButton(
                color: Colors.black,
                onPressed: () => Navigator.pushNamed(context, 'blogfeed'),
                icon: Icon(
                  EvaIcons.search,
                  size: 30,
                ),
              )),
          BottomNavigationBarItem(
              label: 'Notifications',
              icon: IconButton(
                color: Colors.black,
                onPressed: () => Navigator.pushNamed(context, 'notifications'),
                icon: Icon(
                  EvaIcons.bellOutline,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}