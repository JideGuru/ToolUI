part of tool_ui;


class IconBadge extends StatelessWidget {

  IconBadge({
    Key key,
    @required this.icon,
    this.count,
    @required this.onTap,
    this.countWidth = 5,
    this.countHeight = 5,
  })
      : super(
    key: key,
  );

  final Icon icon;
  final Text count;
  final Function onTap;
  final double countWidth;
  final double countHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: <Widget>[
          icon,
          Positioned(
            right: 0.0,
            top: 0.0,
            child: Container(
//              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              constraints: BoxConstraints(
                minWidth: countWidth,
                minHeight: countHeight,
              ),
              child: count == null?SizedBox():Padding(
                padding: EdgeInsets.fromLTRB(5,1,5,1),
                child: count,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
