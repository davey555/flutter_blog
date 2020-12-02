import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BlogHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/avatar.jpg'),
          minRadius: 5,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(EvaIcons.moreHorizotnal, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/third.png'),
                      ))),
              SizedBox(height: 30),
              Row(
                children: [
                  Text('Flutter Tips and Tricks',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(EvaIcons.clockOutline,
                          size: 15, color: Colors.black),
                      SizedBox(width: 4),
                      Text('5 Mins Ago'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(children: [
                    Icon(EvaIcons.messageCircleOutline,
                        size: 15, color: Colors.black),
                    SizedBox(width: 4),
                    Text('12 comments '),
                  ])
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Posts',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('Show all',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      )),
                ],
              ),
              buildBlogList(
                  Image(image: AssetImage('images/second.png')),
                  'Develop',
                  Colors.red,
                  'Top five flutter packages in 2020',
                  '20 mins ago',
                  '5 comments'),
              SizedBox(height: 20),
              buildBlogList(
                  Image(image: AssetImage('images/third.png')),
                  'Code Community',
                  Colors.orange,
                  'Code Clan Nigeria AI Courses',
                  '4 mins ago',
                  '20 comments'),
              SizedBox(height: 20),
            
            
              buildBlogList(
                  Image(image: AssetImage('images/laptop.jpg')),
                  'OS',
                  Colors.green,
                  'Ios 13 Features',
                  '40 mins ago',
                  '238 comments'),
              SizedBox(height: 20),
            
                    buildBlogList(
                  Image(image: AssetImage('images/fourth.png')),
                  'Tech',
                  Colors.yellow,
                  'Bset Tech Blogs 2020',
                  '20 mins ago',
                  '270 comments'),
            ],
          ),
        ),
      ),

      //BOTTOM NAVIGATION BAR WITH FOUR ICONS ALL PUSHING CONTEXT TO FOUR DART CLASSES
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

//CUSTOM WIDGET FOR THE BLOG TITLE CARDS
  Widget buildBlogList(Image img, String toptitle, Color toptitlecolor,
      String story, String timeposted, String comments) {
    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.all(5),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      leading: ClipRRect(
        child: img,
        borderRadius: BorderRadius.circular(5),
      ),
      isThreeLine: true,
      title: Text(toptitle.toUpperCase(),
          style: GoogleFonts.montserrat(
            color: Colors.white,
            backgroundColor: toptitlecolor,
          )),
      subtitle: Column(children: [
        SizedBox(height: 5),
        Text(story,
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 20),
        Row(
          children: [
            Row(
              children: [
                Icon(EvaIcons.clockOutline, size: 15, color: Colors.black),
                SizedBox(width: 4),
                Text(
                  timeposted,
                ),
              ],
            ),
            SizedBox(width: 30),
            Row(children: [
              Icon(EvaIcons.messageCircleOutline,
                  size: 15, color: Colors.black),
              SizedBox(width: 4),
              Text(
                comments,
              ),
            ]),
          ],
        ),
      ]),
    ));
  }
}
