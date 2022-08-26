import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SliverMobile extends StatefulWidget {
  const SliverMobile({Key? key}) : super(key: key);

  @override
  State<SliverMobile> createState() => _SliverMobileState();
}

class _SliverMobileState extends State<SliverMobile> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: [
          // ignore: prefer_const_constructors
          SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              backgroundColor: const Color(0xff700548),
              flexibleSpace: const FlexibleSpaceBar(
                  // background: Image.asset("images/c&v.png"),
                  )),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                            'Chigozie',
                          ),
                          FadeAnimatedText(
                              textStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                              '&'),
                          FadeAnimatedText(
                              textStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04,
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
                  margin: const EdgeInsets.all(50.0),
                  decoration: const BoxDecoration(
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
                Wrap(children: [
                  Text("Agbada Nenwe, Aniri LGA. Enugu State",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontStyle: FontStyle.italic,
                      )),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
