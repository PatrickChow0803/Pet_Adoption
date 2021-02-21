import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 300),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              isDrawerOpen
                  ? IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        setState(() {
                          xoffset = 0;
                          yoffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      })
                  : IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          xoffset = 230;
                          yoffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
                        });
                      })
            ],
          )
        ],
      ),
    );
  }
}
