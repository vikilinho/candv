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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("wedding"),
          ))
        ],
      ),
    );
  }
}
