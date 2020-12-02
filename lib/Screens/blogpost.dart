import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BlogPost extends StatelessWidget {

  //blog post from Rap Payne introduction to flutter course book
  final List<String> posts = [
    """
1. You’d get a vision of what you’re building. Figure the
whole thing out.

2. Realize that the entire project is too complex to
build at once.

3. Break the project into sections (legs, left arm,
right arm, torso, left sword, right sword, helmet,
cape, head).

4. Realize that each of them is still too complex.

5. For each section, you break it into sub-sections.

6. Repeat steps 4 and 5 until you’ve got simple enough
components that each is easy to understand, build,
and maintain – for you and for any teammates that
you may have.

7. Create each simple component.

8. Combine simple components to form the larger,
more complex components.

9. Repeat steps 7 and 8 until you’ve got your entire
project created.

"""
  ];
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
