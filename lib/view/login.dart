import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retrobrew/bloc/authentication_bloc.dart';
import 'package:retrobrew/view/application.dart';
import 'package:retrobrew/view/feed.dart';
import 'signup.dart';

import '../animation/fadeanimation.dart';

enum Field {
  Email,
  password,
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color enabled = const Color(0xFF827F8A);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF2E3154);
  bool ispasswordev = true;
  Field? selected;

  Map<String, TextEditingController> controllers = {
    "username": TextEditingController(),
    "password": TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    controllers["username"]!.text = "cedric.leprohon@yahoo.fr";
    controllers["password"]!.text = "123456";

    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        Navigator.pushNamedAndRemoveUntil(context, "/app", (route) => false);
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: backgroundColor,
            body: SingleChildScrollView(
              child: SizedBox(
                width: we,
                height: he,
                child: Column(
                  children: <Widget>[
                    FadeAnimation(
                      delay: 0.8,
                      child: CachedNetworkImage(
                          imageUrl:
                              "https://retrobrew.s3.fr-par.scw.cloud/logo%20%281%29.png",
                          width: we * 0.9,
                          height: he * 0.4),
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 230.0),
                        child: Text(
                          "Login",
                          style: GoogleFonts.heebo(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.01,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 150.0),
                        child: Text(
                          "Please sign in to continue",
                          style: GoogleFonts.heebo(
                              color: Colors.grey, letterSpacing: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.04,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        width: we * 0.9,
                        height: he * 0.071,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: selected == Field.Email
                              ? enabled
                              : backgroundColor,
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controllers["username"],
                          onTap: () {
                            setState(() {
                              selected = Field.Email;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: selected == Field.Email
                                  ? enabledtxt
                                  : deaible,
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: selected == Field.Email
                                  ? enabledtxt
                                  : deaible,
                            ),
                          ),
                          style: TextStyle(
                              color: selected == Field.Email
                                  ? enabledtxt
                                  : deaible,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.02,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        width: we * 0.9,
                        height: he * 0.071,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: selected == Field.password
                                ? enabled
                                : backgroundColor),
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: controllers["password"],
                          onTap: () {
                            setState(() {
                              selected = Field.password;
                            });
                          },
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock_open_outlined,
                                color: selected == Field.password
                                    ? enabledtxt
                                    : deaible,
                              ),
                              suffixIcon: IconButton(
                                icon: ispasswordev
                                    ? Icon(
                                        Icons.visibility_off,
                                        color: selected == Field.password
                                            ? enabledtxt
                                            : deaible,
                                      )
                                    : Icon(
                                        Icons.visibility,
                                        color: selected == Field.password
                                            ? enabledtxt
                                            : deaible,
                                      ),
                                onPressed: () => setState(
                                    () => ispasswordev = !ispasswordev),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: selected == Field.password
                                      ? enabledtxt
                                      : deaible)),
                          obscureText: ispasswordev,
                          style: TextStyle(
                              color: selected == Field.password
                                  ? enabledtxt
                                  : deaible,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.02,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: TextButton(
                          onPressed: () {
                            if (controllers["username"]?.text != "" &&
                                controllers["password"]?.text != "") {
                              print(controllers["username"]?.text);
                              context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.login(
                                      controllers["username"]!.text,
                                      controllers["password"]!.text));
                            }
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.heebo(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFFFFFFF),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 80),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                    ),
                    SizedBox(
                      height: he * 0.01,
                    ),
                    SizedBox(height: he * 0.12),
                    FadeAnimation(
                      delay: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                              style: GoogleFonts.heebo(
                                color: Colors.grey,
                                letterSpacing: 0.5,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const Signup();
                              }));
                            },
                            child: Text("Sign up",
                                style: GoogleFonts.heebo(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
