import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsivePage extends StatefulWidget {
  final Widget mobilePage;
  final Widget tabletPage;
  final Widget desktopPage;

  const ResponsivePage(
      {super.key,
      required this.mobilePage,
      required this.tabletPage,
      required this.desktopPage});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
