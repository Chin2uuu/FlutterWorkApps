import 'package:flutter/material.dart';
import 'package:flutter_application_tinder_ui/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 50,
                child: Image.asset(assetName),
              ),

              // Image.asset('images/google-logo.png'),
              SizedBox(
                height: 5.0,
                width: 70.0,
                //child: Text('sign with Google'),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          color: Colors.white,
          onPressed: onPressed,
        );
}
