import 'package:flutter/material.dart';
import 'package:menage_everywhere/components/dashboard.dart';
import 'package:menage_everywhere/components/messages.dart';
import 'package:menage_everywhere/components/my_profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Messages(),
    MyProfile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.black87,
        title: const Text(
          'Cleaners  ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade50,
        buttonBackgroundColor: Colors.black87,
        color: Colors.black87,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.messenger_outline,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
