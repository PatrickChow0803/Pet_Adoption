import 'package:flutter/material.dart';
import 'package:pet_adopt/config.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  Text('Active Status'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
