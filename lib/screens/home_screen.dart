import 'package:flutter/material.dart';
import 'package:pet_adopt/config.dart';

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
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Icon(Icons.location_on),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.swap_horiz,
                    color: primaryColor,
                  ),
                  hintText: "Search Pet",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Text(categories[index]['name']),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
