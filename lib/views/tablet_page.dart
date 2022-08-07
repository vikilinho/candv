// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({Key? key}) : super(key: key);

  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.99,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(children: [
                            Text("Chigozie"),
                            Icon(Icons.favorite, color: Colors.red),
                            Text("Victor"),
                          ]),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Gallery',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 51, 46, 4)),
                              )),
                          TextButton(
                              onPressed: () {}, child: Text('Direction')),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
