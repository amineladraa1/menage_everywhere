import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class messageAvatarList extends StatefulWidget {
  const messageAvatarList({
    Key? key,
    required this.names,
  }) :  super(key: key);

  final List<String> names;


  @override
  State<messageAvatarList> createState() => _messageAvatarListState();
}

class _messageAvatarListState extends State<messageAvatarList> {
  int? _currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      child: ListView.separated(
          scrollDirection: Axis.horizontal,

          itemCount: widget.names.length,
          // padding: const EdgeInsets.only(right: 4),


          separatorBuilder: (BuildContext context, int index) {
            return  SizedBox(
              width: 20,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector
              (
              onTap: (){
                 setState(() {

                 _currentIndex = index ;

                });
              },
              child:AnimatedContainer(
                duration:const Duration(seconds: 3) ,
                curve : Curves.bounceOut,
                child: Badge(
                  shape: BadgeShape.circle,
                  elevation : 4.0,
                  badgeColor: Colors.greenAccent,
                  stackFit: StackFit.passthrough,
                  position: BadgePosition.bottomEnd(bottom: 5,end : 5) ,
                  child: CircleAvatar(
                    radius : index  == _currentIndex ? 30.0 : 32.0,
                    backgroundImage: AssetImage('images/profile${index + 1}.jpg'),

                  ),
                ),
              ),
            );
          }),
    );
  }
}