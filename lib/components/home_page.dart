import 'package:flutter/material.dart';
import 'package:menage_everywhere/components/dashboard.dart';
import 'package:menage_everywhere/components/messages.dart';
import 'package:menage_everywhere/components/my_profile.dart';



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
        appBar : AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          title: const Text('Cleaner Finder ' , style: TextStyle(
            color: Colors.black,
          ),),
        ),
        body:  _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,

          elevation: 8,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              //backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline),
              label: 'my messages',
              //backgroundColor: Colors.black54,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
             // backgroundColor: Colors.black54,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.lightBlue[800],
          backgroundColor: Colors.black54,
          onTap: _onItemTapped,
        ));
  }
}

