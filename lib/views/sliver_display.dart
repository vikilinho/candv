import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:candv/utils.dart';
import 'package:flutter/material.dart';

import 'gallery.dart';

class SliverMobile extends StatefulWidget {
  const SliverMobile({Key? key}) : super(key: key);

  @override
  State<SliverMobile> createState() => _SliverMobileState();
}

class _SliverMobileState extends State<SliverMobile> {
  List<Widget> mybox = [
    MyBox(image: 'images/p7.jpeg'),
    MyBox(image: 'images/p2.jpeg'),
    MyBox(image: 'images/p3.jpeg'),
    MyBox(image: 'images/p4.jpeg'),
    MyBox(image: 'images/p5.jpeg'),
    MyBox(image: 'images/p6.jpeg'),
    MyBox(image: 'images/p7.jpeg'),
    MyBox(image: 'images/p8.jpeg'),
  ];

  final List _gridItems = [
    'images/p7.jpeg',
    'images/p2.jpeg'
        'images/p3.jpeg'
        'images/p4.jpeg'
        'images/p5.jpeg'
        'images/p6.jpeg'
        'images/p7.jpeg'
        'images/p8.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: [
          // ignore: prefer_const_constructors
          SliverAppBar(
              pinned: true,
              expandedHeight: 50,
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
                Text("Agbada Nenwe, Aniri LGA. Enugu State",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontStyle: FontStyle.italic,
                    )),
                const SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              ((BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8), child: mybox[index]);
              }),
              childCount: _gridItems.length,
            ),
          )
        ],
      ),
    );
  }
}
