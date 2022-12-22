import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_yonattan/feature/login/presentation/login_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    cekWhatever();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/splash/header_splash.png',
              fit: BoxFit.fill,
            ),
          ),
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/splash/footer_splash.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  cekWhatever() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    context.goNamed(AppRoute.login.name);
  }
}
