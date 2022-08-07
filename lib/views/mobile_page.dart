// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logo = 'images/logo.svg';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final Widget candv = SvgPicture.asset(
    'images/Ellipse.svg',
    semanticsLabel: 'cv',
    height: 50,
  );
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
                Navigator.pop(context);
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
                Text("Agbada Nenwe, Aniri LGA. Enuga",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontStyle: FontStyle.italic,
                    )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
