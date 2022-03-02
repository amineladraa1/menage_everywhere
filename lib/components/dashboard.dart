import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menage_everywhere/ui/Illustrations.dart';
import 'package:menage_everywhere/ui/list_vew_custom.dart';
import 'package:menage_everywhere/ui/messages_avatar.dart';
import 'package:menage_everywhere/ui/title_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> names = <String>[
    'Jack reacher',
    'Anna clavier',
    'Hanan Kaba',
    'sahara laplace'
  ];

  int? _currentIndex;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const titlesText(title: 'Popular Cleaners'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 240,
              child: ListVewCustom(
                names: names,
                width: 160,
                height: 160,
                titleFontSize: 20,
                discriptionFontSize: 15.0,
                sizedBoxHeight: 15.0,
              ),
            ),
            const titlesText(title: 'Messaged recently'),
            const SizedBox(
              height: 5,
            ),
            messageAvatarList(names: names),
            const SizedBox(
              height: 30,
            ),
            const titlesText(title: 'What are you looking for'),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Illustration(name: 'Part', img: 'cleanIlustra1'),
                SizedBox(
                  width: 30.0,
                ),
                Illustration(name: 'Full', img: 'cleanIlustra'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const titlesText(title: 'Professionals close to you'),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 180,
              child: ListVewCustom(
                names: names,
                width: 100,
                height: 100,
                titleFontSize: 13,
                discriptionFontSize: 12.0,
                sizedBoxHeight: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
