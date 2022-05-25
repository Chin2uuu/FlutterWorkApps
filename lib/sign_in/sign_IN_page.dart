import 'package:flutter/material.dart';
import 'package:flutter_application_tinder_ui/sign_in/sign_In_Button.dart';
import 'package:flutter_application_tinder_ui/sign_in/social_signIN.dart';

//import '../common_widgets/custom_raised_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      // print('${authResult.user.uid}');
    } catch (e) {
      print((e).toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          // Container(
          //   color: Color.fromARGB(255, 44, 147, 66),
          //   child: SizedBox(
          //     height: 100,
          //   ),
          // ),
          SizedBox(height: 42.0),
          // CustomRaisedButton(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Container(
          //           width: 40,
          //           height: 50,
          //           child: Image.asset('images/google-logo.png'),
          //         ),

          //         // Image.asset('images/google-logo.png'),
          //         SizedBox(
          //           height: 5.0,
          //           width: 70.0,
          //           //child: Text('sign with Google'),
          //         ),
          //         Text(
          //           'Sign with Google',
          //           style: TextStyle(fontSize: 15),
          //         ),
          //       ],
          //     ),
          //     color: Colors.white,
          //     onPressed: () {}),
          SizedBox(height: 8.0),
          SocialSignInButton(
            text: 'sign in with Google',
            assetName: 'images/google-logo.png',
            textColor: Colors.black,
            // child: Text(
            //   'Sign in with Email',
            //   style: TextStyle(
            //     fontSize: 15.0,
            //     color: Colors.black87,
            //     fontFamily: 'robota',
            //   ),
            // ),
            //borderRadius: 10.0,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 8.0),

          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'sign in with facebook',
            textColor: Color.fromARGB(255, 252, 250, 250),
            color: Color.fromARGB(255, 42, 85, 142),
            onPressed: () {},
          ),

          SizedBox(height: 8.0),

          SignInButton(
            text: 'sign in with Email',
            textColor: Color.fromARGB(255, 252, 250, 250),
            color: Color.fromARGB(255, 1, 90, 81),
            onPressed: () {},
          ),

          SizedBox(height: 10.0),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),

          // CustomRaisedButton(
          //   child: Text('Go Anonmouys'),
          //   color: Colors.amberAccent,
          //   onPressed: _signInAnonymously(),
          // ),
          SignInButton(
            text: 'Go Anonmouysly',
            textColor: Colors.black,
            color: Colors.lime,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
