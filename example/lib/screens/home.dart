import 'package:flutter/material.dart';
import 'package:tool_ui_example/util/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tool UI"),
        centerTitle: true,
      ),

      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int index) {
          Map widget = widgets[index];
          return ListTile(
            title: Text(
              widget['name'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return widget['screen'];
                  },
                ),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },

      ),
    );
  }
}
