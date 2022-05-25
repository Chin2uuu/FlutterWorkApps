import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  RoundButton(
      {required this.buttonText,
      required this.colorText,
      required this.onPressed,
      required this.buttonBoxShape,
      required this.buttonWidth});

  final String buttonText;
  final Color colorText;
  final Function onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  //const RoundButton({Key? key}) : super(key: key);

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      // onPressed:widget.,

      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 100,
        shadowDarkColor: Color.fromARGB(255, 100, 99, 99),
        lightSource: LightSource.topLeft,
        boxShape: widget.buttonBoxShape,
        color: Color(0xFFEDE),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
