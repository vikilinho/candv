// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:candv/utils.dart';
import 'package:candv/views/gallery.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Chigozie'),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                const Text("Victor"),
              ],
            )),
            ListTile(
              title: const Text('Gallery'),
              leading: const Icon(
                Icons.photo_library,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gallery()),
                );
              },
            ),
            ListTile(
              title: const Text('Direction'),
              leading: const Icon(
                Icons.directions,
                color: Colors.teal,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.red,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                        'Chigozie',
                      ),
                      FadeAnimatedText(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                          '&'),
                      FadeAnimatedText(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          'Chigozie & Victor'),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.99,
              margin: EdgeInsets.all(50.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/c&v.png"),
                      fit: BoxFit.cover), //change image fill type
                  shape: BoxShape.circle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      speed: Duration(milliseconds: 30),
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontStyle: FontStyle.italic,
                      ),
                      'You are highly invited to celebrate our wedding.'),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    speed: Duration(milliseconds: 60),
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    "Saturday, September 3, 2022, 2PM",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // ignore: prefer_const_literals_to_create_immutables
              child: Wrap(children: [
                Text(
                  "Address:",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("Agbada Nenwe, Aniri LGA. Enugu State",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontStyle: FontStyle.italic,
                    )),
              ]),
            ),
            SizedBox(
              height: 12.0,
            ),
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    MyBox(image: 'images/p7.jpeg'),
                    MyBox(image: 'images/p2.jpeg'),
                    MyBox(image: 'images/p3.jpeg'),
                    MyBox(image: 'images/p4.jpeg'),
                    MyBox(image: 'images/p5.jpeg'),
                    MyBox(image: 'images/p6.jpeg'),
                    MyBox(image: 'images/p7.jpeg'),
                    MyBox(image: 'images/p8.jpeg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
