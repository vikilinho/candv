import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('C&V'),
      ),
      body: const Center(
        child: Text('Mobile'),
      ),
    );
  }
}
