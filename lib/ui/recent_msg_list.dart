import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class RecentMessages extends StatefulWidget {
  const RecentMessages({
    Key? key,
    required this.names,
    required this.onTapController,
  }) : super(key: key);

  final List<String> names;
  final VoidCallback onTapController;

  @override
  State<RecentMessages> createState() => _RecentMessagesState();
}

class _RecentMessagesState extends State<RecentMessages> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.names.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Badge(
            shape: BadgeShape.circle,
            elevation: 4.0,
            badgeColor: Colors.greenAccent,
            stackFit: StackFit.passthrough,
            position: BadgePosition.bottomEnd(bottom: 5, end: 5),
            child: CircleAvatar(
              radius: 32.0,
              backgroundImage: AssetImage('images/profile${index + 1}.jpg'),
            ),
          ),
          title: Text(widget.names[index],
              style: TextStyle(
                color: Colors.black87,
                fontSize: 17.0,
              )),
          subtitle: Text("the message should be here ",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 15.0,
              )),
          // trailing: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.menu_sharp),
          //   splashRadius: 19.0,
          // ),
          onTap: widget.onTapController,

          //  widget.onTapController,
        );
      },
    );
  }
}
