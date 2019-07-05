part of tool_ui;

class ExpandableText extends StatefulWidget {
  final String text;
  final TextStyle style;
  ExpandableText({
    @required this.text,
    @required this.style,
  });

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(150, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf,
        style: widget.style,
        textAlign: TextAlign.left,)
          : new Column(
        children: <Widget>[
          new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),
            style: widget.style,
            textAlign: TextAlign.left,),
          new InkWell(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  flag ? "Read more" : "Read less",
                  style: new TextStyle(color: Theme.of(context).accentColor),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}
