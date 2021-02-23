import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff416d6d);

List<BoxShadow> listShadow = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10)),
];

List<Map> drawerItem = [
  {'title': 'Adoption', 'icon': FontAwesomeIcons.paw},
  {'title': 'Donation', 'icon': Icons.mail},
  {'title': 'Add Pet', 'icon': FontAwesomeIcons.plus},
  {'title': 'Favorites', 'icon': Icons.favorite},
  {'title': 'Profile', 'icon': FontAwesomeIcons.userAlt},
];

List<Map<String, String>> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];
