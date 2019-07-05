import 'package:flutter/material.dart';
import 'package:tool_ui/tool_ui.dart';



class ExpandableTexts extends StatefulWidget {
  @override
  _ExpandableTextsState createState() => _ExpandableTextsState();
}

class _ExpandableTextsState extends State<ExpandableTexts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Texts"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ExpandableText(
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Praesent sapien massa, convallis a pellentesque nec, egestas "
                "non nisi. Curabitur arcu erat, accumsan id imperdiet et, "
                "porttitor at sem. Vivamus suscipit tortor eget felis porttitor"
                " volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing"
                " elit. Quisque velit nisi, pretium ut lacinia in, elementum "
                "id enim. Vivamus magna justo, lacinia eget consectetur sed,"
                " convallis at tellus. Proin eget tortor risus. Nulla quis"
                " lorem ut libero malesuada feugiat. Vestibulum ac diam sit"
                " amet quam vehicula elementum sed sit amet dui.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
