import 'package:flutter/material.dart';

// My Code
//import 'package:flutter_first_application/src/pages/home_page.dart';
import 'package:flutter_first_application/src/pages/home_page_stateful.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageStateful(),
      debugShowCheckedModeBanner: false,
    );
  }
}
