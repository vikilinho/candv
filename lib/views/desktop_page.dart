// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:candv/utils.dart';
import 'package:flutter/material.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(children: [
                              Text("Chigozie"),
                              Icon(Icons.favorite, color: Colors.red),
                              Text("Victor"),
                            ]),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Gallery',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 51, 46, 4)),
                                )),
                            TextButton(
                                onPressed: () {}, child: Text('Direction')),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: EdgeInsets.all(50.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/c&v.png"),
                            fit: BoxFit.cover), //change image fill type
                        shape: BoxShape.circle),
                  ),
                ),
                Column(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                            speed: Duration(milliseconds: 30),
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontStyle: FontStyle.italic,
                            ),
                            'You are highly invited to celebrate our wedding.'),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          speed: Duration(milliseconds: 60),
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                          "Saturday, September 3, 2022, 2PM",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Wrap(children: [
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
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  // ignore: prefer_const_literals_to_create_immutables
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
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(children: [
                              Text("Chigozie"),
                              Icon(Icons.favorite, color: Colors.red),
                              Text("Victor"),
                            ]),
                            Text("Thank you for coming to our wedding"),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
