import 'package:flutter/material.dart';
import 'package:menage_everywhere/components/messages.dart';
import 'package:menage_everywhere/components/my_profile.dart';

import 'components/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHome(),// becomes the route named '/'
      routes: <String, WidgetBuilder> {
        '/messages': (BuildContext context) => Messages(),
        '/profile': (BuildContext context) => MyProfile(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ProximaNova',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,
      ),

    );
  }
}


