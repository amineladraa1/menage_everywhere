import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:menage_everywhere/ui/messages_avatar.dart';
import 'package:menage_everywhere/ui/recent_msg_list.dart';
import 'package:menage_everywhere/ui/title_text.dart';
import 'package:badges/badges.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(
      length: 2,
      vsync: this,
    );
  }

  List<String> names = ['avatar', 'salmasa', 'bratan', 'lapay'];

  onTapController() {
    setState(() {
      print('clicked!!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 8, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const titlesText(title: 'Active Now'),
          const SizedBox(
            height: 5.0,
          ),
          messageAvatarList(names: names),
          Divider(),
          Container(
            height: 40.0,
            color: Colors.white,
            child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                controller: _controller,
                tabs: [
                  Tab(text: 'Recent'),
                  Tab(text: 'Online friends'),
                ]),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 460,
            color: Colors.white,
            child: TabBarView(
              controller: _controller,
              children: [
                RecentMessages(
                  names: names,
                  onTapController: onTapController,
                ),
                const Center(child: Text('page2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
