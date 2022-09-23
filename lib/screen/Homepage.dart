import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_streams/components/data.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 65, 71, 80),
          body: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, bottom: 0, right: 0),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Moviez \n',
                            style: GoogleFonts.adventPro(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            children: <TextSpan>[
                          TextSpan(
                              text: 'Watch much easier',
                              style: GoogleFonts.adventPro(
                                  color: Colors.white70, fontSize: 20))
                        ])),
                    IconButton(
                      icon: const Padding(
                        padding: EdgeInsets.only(
                            left: 150, right: 0, bottom: 0, top: 0),
                        child:
                            Icon(Icons.search, color: Colors.white, size: 35),
                      ),
                      onPressed: () {},
                      splashColor: Colors.blueAccent,
                    )
                  ],
                ),
              ),
              listFilm(),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 40, top: 0, left: 20, right: 0),
                    child: RichText(
                        text: TextSpan(
                            text: 'From Discover',
                            style: GoogleFonts.abrilFatface(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))),
                  ),
                ],
              ),
              film(),
              ConvexAppBar(
                backgroundColor: Colors.blueGrey,
                style: TabStyle.flip,
                items: const [
                  TabItem(
                    icon: Icons.home,
                    title: 'Home',
                  ),
                  TabItem(icon: Icons.menu, title: 'Menu'),
                  TabItem(icon: Icons.settings, title: 'Settings'),
                  TabItem(icon: Icons.people, title: 'Profile')
                ],
              )
            ],
          )),
        ));
  }
}

//List film dalam container

listFilm() {
  return Expanded(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
            alignment: Alignment(-0, -0.5),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    print('ditekan');
                  },
                  splashColor: Color.fromARGB(255, 15, 158, 230),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 20,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                alignment: Alignment(0, -0.9),
                                image: AssetImage('asset/images/1.jpg'),
                                fit: BoxFit.fill),
                          ),
                          height: 200,
                          width: 300,
                          child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.only(
                                    top: 120, left: 0, right: 0, bottom: 0),
                                child: RichText(
                                  text: TextSpan(
                                      text: "DR.Strange",
                                      style: GoogleFonts.boogaloo(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                              ),
                              subtitle: Text("Action, SuperHero",
                                  style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold,
                                  ))))),
                ),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 20,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              alignment: Alignment(0, -0.9),
                              image: AssetImage('asset/images/2.jpg'),
                              fit: BoxFit.fill),
                        ),
                        height: 200,
                        width: 300,
                        child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(
                                  top: 120, left: 0, right: 0, bottom: 0),
                              child: RichText(
                                text: TextSpan(
                                    text: "Toy Story 4 ",
                                    style: GoogleFonts.boogaloo(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ),
                            subtitle: Text("Cartoon, Kids",
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                ))))),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 20,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              alignment: Alignment(0, -0.9),
                              image: AssetImage('asset/images/3.jpg'),
                              fit: BoxFit.fill),
                        ),
                        height: 200,
                        width: 300,
                        child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(
                                  top: 120, left: 0, right: 0, bottom: 0),
                              child: RichText(
                                text: TextSpan(
                                    text: "Harry Potter",
                                    style: GoogleFonts.boogaloo(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ),
                            subtitle: Text("Action, Magic",
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white54))))),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 20,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              alignment: Alignment(0, -0.9),
                              image: AssetImage('asset/images/4.jpg'),
                              fit: BoxFit.fill),
                        ),
                        height: 200,
                        width: 300,
                        child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(
                                  top: 120, left: 0, right: 0, bottom: 0),
                              child: RichText(
                                text: TextSpan(
                                    text: "Batman Arkham",
                                    style: GoogleFonts.boogaloo(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ),
                            subtitle: Text("Action, SuperHero",
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                ))))),
              ],
            ))
      ],
    ),
  );
}

film() {
  return Expanded(
      child: ListView(
    scrollDirection: Axis.vertical,
    children: [
      Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/2.jpg'),
                              fit: BoxFit.fill)),
                      height: 150,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 40),
                  child: RichText(
                      text: TextSpan(
                          text: 'Toy story 4 \n',
                          style: GoogleFonts.actor(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Cartoon, Kids',
                            style: GoogleFonts.actor(
                                color: Colors.white30, fontSize: 15))
                      ])),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/1.jpg'),
                              fit: BoxFit.fill)),
                      height: 150,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 40),
                  child: RichText(
                      text: TextSpan(
                          text: 'Dr.Strange \n',
                          style: GoogleFonts.actor(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Action, SuperHero',
                            style: GoogleFonts.actor(
                                color: Colors.white30, fontSize: 15))
                      ])),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/3.jpg'),
                              fit: BoxFit.fill)),
                      height: 150,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 40),
                  child: RichText(
                      text: TextSpan(
                          text: 'Harry Potter \n',
                          style: GoogleFonts.actor(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Action, Magic',
                            style: GoogleFonts.actor(
                                color: Colors.white30, fontSize: 15))
                      ])),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/images/4.jpg'),
                              fit: BoxFit.fill)),
                      height: 150,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 40),
                  child: RichText(
                      text: TextSpan(
                          text: 'Batman \n',
                          style: GoogleFonts.actor(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Action, SuperHero',
                            style: GoogleFonts.actor(
                                color: Colors.white30, fontSize: 15))
                      ])),
                )
              ],
            )
          ],
        ),
      )
    ],
  ));
}
