import 'package:calculator_app1/constant.dart';
import 'package:calculator_app1/roundButton.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app1/cal_brain.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  CalculatorBrain calc = CalculatorBrain();
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEBEC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 70,
                    ),
                    child: Text(
                      result,
                      style: kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Text(
                      calc.resultOperationText,
                      style: KOprationTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "AC",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "+/-",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+/-");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "%",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonText: "÷",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "7",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "8",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("8");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "9",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("9");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonText: "x",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("x");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "4",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "5",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("5");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "6",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("6");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonText: "-",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("-");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "1",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("1");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "2",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("2");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: "3",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("3");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonText: "+",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+");
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(40.0),
                      ),
                      colorText: kBlackColorText,
                      buttonText: "0",
                      buttonWidth: 2.9,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("0");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kBlackColorText,
                      buttonText: ".",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed(".");
                        });
                      },
                    ),
                    RoundButton(
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      colorText: kOrangeColorText,
                      buttonText: "=",
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("=");
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
