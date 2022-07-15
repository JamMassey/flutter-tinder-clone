import 'package:flutter/material.dart';
import 'package:flutter_dating/values/values.dart';
import 'package:flutter_dating/widgets/spaces.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final double elevation;
  final double borderRadius;
  final String? title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  final Widget? icon;
  final bool hasIcon;
  CustomButton({
    this.title,
    this.onPressed,
    this.textStyle,
    this.icon,
    this.width = Sizes.WIDTH_150,
    this.height = Sizes.HEIGHT_50,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = AppColors.blackShade5,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.hasIcon = false,
  });


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      minWidth: MediaQuery.of(context).size.width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),

      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          hasIcon ? icon! : Container(),
          hasIcon ? SpaceW8() : Container(),
          title != null
              ? Text(
                  title!,
                  style: textStyle,
                )
              : Container(),
        ],
      ),
    );
  }
}
