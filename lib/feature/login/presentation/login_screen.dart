import 'package:flutter/material.dart';
import 'package:flutter_challenge_yonattan/shared/constant/app_sizes.dart';
import 'package:flutter_challenge_yonattan/shared/widget/lie_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/login/header-login.png",
                // fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapH32,
                  Image.asset(
                    "assets/images/logo.png",
                    // fit: BoxFit.fill,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                gapH8,
                Text(
                  "Please sign in to continue.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                gapH24,
                LieTextField(
                  label: "User Id",
                  // labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                  //       color: Colors.black,
                  //       // fontSize: 12,
                  //     ),
                  onChanged: ((value) {}),
                ),
                gapH8,
                LieTextField(
                  label: "Password",
                  obscure: true,
                  maxLines: 1,
                  // labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                  //       color: Colors.black,
                  //       // fontSize: 12,
                  //     ),
                  onChanged: ((value) {}),
                ),
                gapH8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Login'),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(
                onPressed: () {},
                child: Text("Sign Up"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
