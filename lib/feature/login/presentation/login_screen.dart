import 'package:flutter/material.dart';
import 'package:flutter_challenge_yonattan/shared/constant/app_sizes.dart';
import 'package:flutter_challenge_yonattan/shared/widget/lie_textfield.dart';

import '../controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context, LoginController controller) {
    controller.view = this;
    String userId ="";
    String password = "";
      
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
                  onChanged: ((value) {
                    userId = value;
                  }),
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
                  onChanged: ((value) {
                    password = value;
                  }),
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
                      onPressed: () => controller.doLogin(userId, password),
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
                onPressed: () => controller.doLogin(userId, password),
                child: Text("Sign Up"),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  State<LoginScreen> createState() => LoginController();
}