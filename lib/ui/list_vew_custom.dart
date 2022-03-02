import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ListVewCustom extends StatelessWidget {
  const ListVewCustom({
    Key? key,
    required this.names,
    required this.width,
    required this.height,
    required this.titleFontSize,
    required this.discriptionFontSize,
    required this.sizedBoxHeight,
  }) : super(key: key);

  final List<String> names;
  final double width;
  final double height;
  final double titleFontSize;
  final double discriptionFontSize;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,

      itemCount: names.length,
      // padding: const EdgeInsets.only(right: 4),

      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 20,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              PhysicalModel(
                color: Colors.white70,
                elevation: 2,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(4.0),
                    image: DecorationImage(
                        image: AssetImage('images/profile${index + 1}.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: width,
                    height: height,
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {},
                        splashRadius: 16.0,
                        icon: Icon(FontAwesome5.comment_dots,
                            color: Colors.black, size: 29.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          Text(names[index],
              style: TextStyle(
                color: Colors.black87,
                fontSize: titleFontSize,
              )),
          Text("28 , Male ",
              style: TextStyle(
                color: Colors.black45,
                fontSize: discriptionFontSize,
              )),
        ]);
      },
    );
  }
}
//Container(
//width: 160,
//height: 160,
//decoration: BoxDecoration(
//borderRadius: BorderRadiusDirectional.circular(10.0),

//gradient: LinearGradient(
//begin: Alignment.topCenter,
//end: Alignment.bottomCenter,
//colors: <Color>[
//Colors.black.withAlpha(0),//
//Colors.black12,
//Colors.black,
//],
//),

//),
/*child: Padding(
padding: const EdgeInsets.only(bottom : 15.0 ,left : 10.0),
child: Column(
crossAxisAlignment : CrossAxisAlignment.start,
mainAxisAlignment : MainAxisAlignment.end,

children: [
Text(names[index] ,style: TextStyle(

color : Colors.white,
fontSize: 20.0,
)),
Text("i'm a very delligent worker who loves his job "  ,style: TextStyle(
color : Colors.white38,

)),
],
),
),
),*/
