import 'package:flutter/material.dart';
import 'package:job_board_mobile/details.dart';
import 'package:job_board_mobile/list.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Board',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
      routes: {
        "list": (context) => const ListPage(),
        "details": (context) => const DetailsPage()
      },
    );
  }
}
