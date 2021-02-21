import 'package:flutter/material.dart';
import 'package:pet_adopt/screens/drawer_screen.dart';
import 'package:pet_adopt/screens/home_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeScreen(),
          DrawerScreen(),
        ],
      ),
    );
  }
}
