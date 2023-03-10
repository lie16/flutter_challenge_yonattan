import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../shared/utils/state_util.dart';
import '../presentation/login_screen.dart';

class LoginController extends State<LoginScreen> implements MvcController {
  static late LoginController instance;
  late LoginScreen view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String userId = "";
  String password = "";
  doLogin() async {
    if (userId.isEmpty || password.isEmpty) {
      await showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            title: const Text('Info'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('User ID dan atau Password anda belum diisi.'),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Ok"),
              ),
            ],
          );
        },
      );
    }
  }
}
