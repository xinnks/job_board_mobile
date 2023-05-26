import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final boxWidth = ((MediaQuery.of(context).size.width / 3) * 2) - 32;
    final halfBoxWidth = (boxWidth / 2) - 8;
    const boxBorderRadius = BorderRadius.all(Radius.circular(21.0));

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 249, 249, 251),
              Color.fromARGB(255, 235, 239, 249),
              Color.fromARGB(255, 210, 219, 238),
              Color.fromARGB(255, 210, 219, 238),
              Color.fromARGB(255, 240, 243, 255),
              Color.fromARGB(255, 243, 244, 251),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          )),
          child: Column(
            children: [
              MenuBox(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Let's Find Jobs Opportunity here",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 13, 71, 71)),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.search_circle_fill,
                      color: Color.fromARGB(255, 22, 94, 94),
                      size: 64,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: boxBorderRadius,
                        color: Color.fromARGB(255, 0, 83, 83),
                      ),
                      height: boxWidth,
                      width: boxWidth,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: boxBorderRadius,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          height: halfBoxWidth,
                          width: halfBoxWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: boxBorderRadius,
                            color: Color.fromARGB(255, 250, 255, 255),
                          ),
                          height: halfBoxWidth,
                          width: halfBoxWidth,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  CupertinoListTile MenuBox() {
    return CupertinoListTile(
      leading: const Icon(CupertinoIcons.list_bullet),
      trailing: Column(
        children: [
          Row(
            children: const [
              Icon(
                CupertinoIcons.bell,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                CupertinoIcons.person,
              )
            ],
          )
        ],
      ),
      title: const Text("Menu"),
    );
  }
}
