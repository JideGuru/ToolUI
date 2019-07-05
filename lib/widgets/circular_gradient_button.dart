part of tool_ui;


class CircularGradientButton extends StatelessWidget {

  CircularGradientButton({
    Key key,
    @required this.gradient,
    this.width = 50.0,
    this.height = 50.0,
    @required this.onTap,
    @required this.child,
    this.elevation = 2.0,
  }) : super(key: key);

  /// The fill of the button
  ///
  /// This has to be a gradient
  final Gradient gradient;

  /// Button width
  final double width;

  /// Button Height
  final double height;

  /// Button Label
  final Widget child;

  /// onTap Event handler
  final Function onTap;


  final double elevation;

  /// BorderRadius of the Button


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0.0, 1.5),
            blurRadius: elevation,
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          radius: Constants.getRadius(height, width),
          customBorder: CircleBorder(),
          child: child,
          onTap: onTap,
        ),
      ),
    );
  }
}
