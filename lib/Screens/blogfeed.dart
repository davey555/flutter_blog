import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BlogFeed extends StatelessWidget {
// THIS IS FOR THE BOTTOM NAVIGATION BAR SEARCH ITEM 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //I added same app bar and also bottom navigation bar to all the pages
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
      //single child scroll view for the scrolls of the node tree
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),//for the physics of the screen
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 
                    padding: EdgeInsets.all(8),
                    child: Text('SEARCH'.toUpperCase(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
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
          ),
          SizedBox(height: 30),
          Text('Flutter Tips and Tricks',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 30),
          Container(
             margin: EdgeInsets.only(
                    left: 8, right: 8, 
                  ) ,
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
