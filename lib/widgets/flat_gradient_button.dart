part of tool_ui;

/// A Gradient fill Raised Button
///
/// Used as a normal button but can be filled
/// with Gradients instead of ordinary colors
class FlatGradientButton extends StatelessWidget {

  FlatGradientButton({
    Key key,
    @required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    @required this.onPressed,
    @required this.label,
    this.borderRadius,
    this.leading,
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
  final Text label;

  /// onPressed Event handler
  final Function onPressed;


  /// BorderRadius of the Button
  final BorderRadius borderRadius;


  final Widget leading;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: borderRadius == null
            ?BorderRadius.circular(0)
            :borderRadius,
        gradient: gradient,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
//          radius: Constants.getRadius(height, width),
          borderRadius: borderRadius == null
              ?BorderRadius.circular(0)
              :borderRadius,
          onTap: onPressed,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                leading == null? SizedBox():leading,
                SizedBox(width: 5),
                label,
              ],
            ),
          ),
        ),
      ),
    );
  }
}