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
      margin: EdgeInsets.only(top: 30, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
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
          Column(
            children: drawerItem
                .map((drawerItem) => Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(
                            drawerItem['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            drawerItem['title'],
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text('Settings'),
            ],
          )
        ],
      ),
    );
  }
}
