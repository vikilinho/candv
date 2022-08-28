import 'package:candv/views/desktop_page.dart';
import 'package:candv/views/desktop_sliver.dart';
import 'package:candv/views/mobile_page.dart';
import 'package:candv/views/responsive_page.dart';
import 'package:candv/views/sliver_display.dart';
import 'package:candv/views/tablet_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C&V',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ResponsivePage(
      //   mobilePage: MobilePage(),
      //   tabletPage: TabletPage(),
      //   desktopPage: DesktopPage(),
      // ),
      home: DesktopSliver(),
    );
  }
}
