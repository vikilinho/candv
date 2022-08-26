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
              expandedHeight: 200,
              backgroundColor: const Color(0xff700548),
              flexibleSpace: const FlexibleSpaceBar(
                  // background: Image.asset("images/c&v.png"),
                  )),
          SliverToBoxAdapter(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
