import 'package:flutter/material.dart';
import 'package:retrobrew/view/application.dart';
import 'package:retrobrew/view/login.dart';
import 'package:retrobrew/view/signup.dart';
import 'package:retrobrew/view/welcome_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> navigation = {
    '/': (context) => WelcomePage(),
    '/login': (context) => Login(),
    '/signup': (context) => const Signup(),
    '/app': (context) => Application(),
  };
}
