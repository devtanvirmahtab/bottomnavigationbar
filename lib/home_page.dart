import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationBar Design"),
        backgroundColor: Colors.deepPurpleAccent.shade200,
      ),
      body: Container(),

      bottomNavigationBar:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.deepPurpleAccent.shade200,
        ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: GNav(// tab animation curves
          color: Colors.white,
          activeColor: Colors.deepPurple,
          tabBackgroundColor: Colors.deepPurple.shade50,
          padding: EdgeInsets.all(12),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Home',
            ),
            GButton(
              icon: Icons.person,
              text: 'Home',
            )
          ],
        ),
      )
    );
  }
}
