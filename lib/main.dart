import 'package:candv/views/desktop_page.dart';
import 'package:candv/views/mobile_page.dart';
import 'package:candv/views/responsive_page.dart';
import 'package:candv/views/tablet_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C&V',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsivePage(
        mobilePage: MobilePage(),
        tabletPage: TabletPage(),
        desktopPage: DesktopPage(),
      ),
    );
  }
}
