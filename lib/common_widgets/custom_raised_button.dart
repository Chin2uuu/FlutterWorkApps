import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    required this.child,
    // required this.icon,
    this.borderRadius: 4.0,
    required this.color,
    required this.onPressed,
  });
  final Widget child;
  // final Icon icon;

  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: RaisedButton(
        child: child,
        color: color,

        // child: Text(
        //   'Sign in with Email',
        //   style: TextStyle(
        //     fontSize: 15.0,
        //     color: Colors.black87,
        //     fontFamily: 'robota',
        //   ),
        // ),
        // color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
