import 'package:flutter/material.dart';
import 'package:layout_basics/Custom_Widgets/SignInButton.dart';
import 'package:layout_basics/Custom_Widgets/SocialSignInButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Basics"),
      ),
      body: MainPage(),
    );
  }
}

Widget MainPage() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Sign in",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50.0),
        SocialSignInButton(
          assetName: 'images/google-logo.png',
          text: "Sign in with Google",
          color: Colors.white,
          onPressed: () {},
          textColor: Colors.black,
        ),
        const SizedBox(height: 8.0),
        SocialSignInButton(
          assetName: ('images/facebook-logo.png'),
          text: "Sign in with Facebook",
          color: Colors.blueAccent,
          onPressed: () {},
          textColor: Colors.white,
        ),
        const SizedBox(height: 8.0),
        SignInButton(
          text: "Sign in with email",
          color: Colors.teal,
          onPressed: () {},
          textColor: Colors.white,
        ),
        const SizedBox(height: 8.0),
        const Text(
          "or",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8.0),
        SignInButton(
          text: "Sign in as a Guest",
          color: Colors.lime,
          onPressed: () {},
          textColor: Colors.white,
        ),
      ],
    ),
  );
}
