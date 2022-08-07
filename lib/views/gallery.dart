// ignore_for_file: prefer_const_constructors

import 'package:candv/utils.dart';
import 'package:candv/views/desktop_page.dart';
import 'package:candv/views/mobile_page.dart';
import 'package:candv/views/responsive_page.dart';
import 'package:candv/views/tablet_page.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ResponsivePage(
                          mobilePage: MobilePage(),
                          tabletPage: TabletPage(),
                          desktopPage: DesktopPage(),
                        )),
              );
            },
            icon: Icon(Icons.home_filled)),
        title: const Text('Gallery'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
                'Take a look at our journey through the lens of a camera'),
            Expanded(
              child: AspectRatio(
                aspectRatio: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const MyBox(image: 'images/p1.jpeg'),
                      const MyBox(image: 'images/p2.jpeg'),
                      const MyBox(image: 'images/p3.jpeg'),
                      const MyBox(image: 'images/p4.jpeg'),
                      const MyBox(image: 'images/p5.jpeg'),
                      const MyBox(image: 'images/p6.jpeg'),
                      const MyBox(image: 'images/p7.jpeg'),
                      const MyBox(image: 'images/p8.jpeg'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
