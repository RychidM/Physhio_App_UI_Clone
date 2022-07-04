import 'package:flutter/material.dart';
import 'package:physio_app/pages/nav_menu_page.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(const PhysioApp());
}

class PhysioApp extends StatelessWidget {
  const PhysioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Physiotherapy App UI Clone",
      home: SplashScreen(),
    );
  }
}
