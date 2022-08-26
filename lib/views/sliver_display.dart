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
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
