import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/shared/loading.dart';

class SignInRequest extends StatelessWidget {

  const SignInRequest({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: Image.network("https://i.pinimg.com/originals/01/ca/05/01ca051bd9cc85346b2144d218ad8e05.gif",).image,
              width: 100),
            ),
            Text("Hey guy"),
            Text("Retrobrew without you is not Retrobrew"),
            Text("Please sign up for better experience"),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  ElevatedButton(onPressed: () => {
                    Navigator.pushNamedAndRemoveUntil(context, "/signup", (route) => false)
                  }, child: Text("Sign up")),
                  TextButton(onPressed: () => {
                    Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false)
                  }, child: Text("...or sign in"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
