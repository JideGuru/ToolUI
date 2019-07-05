import 'package:tool_ui/tool_ui.dart';
import 'package:flutter/material.dart';
import 'package:tool_ui/util/const.dart';

class GradientButton extends StatefulWidget {
  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient Buttons"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          // normal Raised Gradient Button
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blue[800],
                Colors.blue[400]
              ],
            ),
            label: Text(
              "Normal Gradient Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: (){},
          ),

          SizedBox(height:10),

          //raised Gradient Button with border radius
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blue[800],
                Colors.blue[400]
              ],
            ),
            label: Text(
              "Gradient Button w/ border radius",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: (){},
            borderRadius: BorderRadius.circular(10),
          ),

          SizedBox(height:10),

          // raised Gradient Button with leading
          RaisedGradientButton(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blue[800],
                Colors.blue[400]
              ],
            ),
            label: Text(
              "Gradient Button w/ leading",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            leading: Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
            onPressed: (){},
          ),

          SizedBox(height:10),

          // Flat Gradient Button
          FlatGradientButton(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blue[800],
                Colors.blue[400]
              ],
            ),
            label: Text(
              "Flat Gradient Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: (){},
          ),

          SizedBox(height:10),

//          CircularGradientButton(
//            child: Icon(
//              Icons.add,
//              size: 24,
//              color: Colors.white,
//            ),
//
//            gradient: LinearGradient(
//              colors: <Color>[
//                Colors.blue[800],
//                Colors.blue[400]
//              ],
//            ),
//
//            onTap: (){},
//          ),

          SizedBox(height:10),

        ],
      ),
      
      floatingActionButton: CircularGradientButton(
        child: Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),

        gradient: LinearGradient(
          colors: <Color>[
            Colors.blue[800],
            Colors.blue[400]
          ],
        ),

        elevation: 4,
        onTap: (){},
      ),
    );
  }
}
