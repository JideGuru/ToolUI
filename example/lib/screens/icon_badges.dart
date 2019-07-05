import 'package:tool_ui/tool_ui.dart';
import 'package:flutter/material.dart';

class IconBadges extends StatefulWidget {
  @override
  _IconBadgesState createState() => _IconBadgesState();
}

class _IconBadgesState extends State<IconBadges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Badges"),
        centerTitle: true,
      ),
      body: Container(
        height: 120,
        margin: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            // normal Raised Gradient Button
            IconBadge(
              icon: Icon(
                Icons.notifications,
                size: 40,
              ),
              count: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              onTap: (){},
            ),

            SizedBox(width:10),

            IconBadge(
              icon: Icon(
                Icons.add_shopping_cart,
                size: 40,
              ),
              onTap: (){},
              countHeight: 10,
              countWidth: 10,
            ),



          ],
        ),
      ),


    );
  }
}
