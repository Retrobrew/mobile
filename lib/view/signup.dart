import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:retrobrew/helper/countries.dart';
import 'package:retrobrew/view/registration_success.dart';
import 'package:searchfield/searchfield.dart';

import '../animation/fadeanimation.dart';
import '../bloc/authentication_bloc.dart';
import 'application.dart';
import 'login.dart';

enum Field {
  fullname,
  email,
  username,
  password,
  birthdate,
  confirmpassword,
  phone,
  sexe,
  country
}

enum Type {
  text,
  search
}

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Color enabled = const Color(0xFF827F8A);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  Field? selected;

  Map<String, TextEditingController> controllers = {
    "fullname": TextEditingController(),
    "username": TextEditingController(),
    "email": TextEditingController(),
    "password": TextEditingController(),
    "confirm_password": TextEditingController(),
    "birthdate": TextEditingController(),
    "country": TextEditingController(),
    "sexe": TextEditingController()
  };

  Widget RoundedTextField({
    required Field name,
    required String text,
    required IconData icon,
    required TextEditingController controller,
    bool password = false,
    Type type = Type.text,
    Function? onTap,
    List<String>? suggestions
  }) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Column(
      children: [
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
                color: selected == name ? enabled : backgroundColor,
              ),
              padding: const EdgeInsets.all(8.0),
              child:
              type == Type.search ?
              (SearchField<String>(
                suggestions: suggestions!
                    .map((e) => SearchFieldListItem<String>(e, item: e))
                    .toList(),
                controller: controller,
                searchStyle: TextStyle(
                    color: selected == name ? enabledtxt : deaible,
                    fontWeight: FontWeight.bold),
                searchInputDecoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    icon,
                    color: selected == name ? enabledtxt : deaible,
                  ),
                  hintText: text,
                  hintStyle: TextStyle(
                    color: selected == name ? enabledtxt : deaible,
                  ),
                ),
              )) :
              (TextField(
              obscureText: password,
              controller: controller,
              onTap: () {
                setState(() {
                  selected = name;
                });

                try {
                  onTap!();
                } catch (_) {}
              },
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                prefixIcon: Icon(
                  icon,
                  color: selected == name ? enabledtxt : deaible,
                ),
                hintText: text,
                hintStyle: TextStyle(
                  color: selected == name ? enabledtxt : deaible,
                ),
              ),
              style: TextStyle(
                  color: selected == name ? enabledtxt : deaible,
                  fontWeight: FontWeight.bold),
            ))
            )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(COUNTRY_NAME);
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF1F1A30),
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if(state.authentication != null) {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => const RegistrationSuccess()));

          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: SizedBox(
              width: we,
              height: he,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: he * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: we * 0.04),
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 80.0),
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.heebo(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 130.0),
                      child: Text(
                        "Please fill the input blow here",
                        style: GoogleFonts.heebo(
                            color: Colors.grey, letterSpacing: 1),
                      ),
                    ),
                  ),
                  RoundedTextField(
                      controller: controllers["username"]!,
                      name: Field.fullname,
                      text: 'Username',
                      icon: Icons.person_outline_outlined),
                  RoundedTextField(
                      controller: controllers["email"]!,
                      name: Field.email,
                      text: 'Email',
                      icon: Icons.email_outlined),
                  RoundedTextField(
                      controller: controllers["birthdate"]!,
                      name: Field.birthdate,
                      text: 'Birthdate',
                      icon: Icons.date_range_outlined,
                      onTap: () async {
                        var birthdate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1960),
                            lastDate: DateTime.now());
                        if (birthdate != null) {
                          controllers["birthdate"]!.text =
                              DateFormat("dd/MM/yyyy").format(birthdate);
                        }
                      }),
                  RoundedTextField(
                      controller: controllers["password"]!,
                      name: Field.password,
                      text: 'Password',
                      password: true,
                      icon: Icons.lock_open_outlined),
                  RoundedTextField(
                      controller: controllers["confirm_password"]!,
                      name: Field.confirmpassword,
                      text: 'Confirm password',
                      password: true,
                      icon: Icons.lock_open_outlined),
                  RoundedTextField(
                    controller: controllers["country"]!,
                      type: Type.search,
                      suggestions: COUNTRY_NAME,
                      name: Field.confirmpassword,
                      text: 'COUNTRY',
                      password: true,
                      icon: Icons.flag_outlined),
                  RoundedTextField(
                      controller: controllers["sexe"]!,
                      name: Field.sexe,
                      type: Type.search,
                      suggestions: <String>["Male", "Female"],
                      text: 'Gender',
                      icon: Icons.accessibility_new_outlined),
                  SizedBox(height: he * 0.05),
                  FadeAnimation(
                    delay: 1,
                    child: TextButton(
                        onPressed: () {
                          if(!COUNTRY_NAME.contains(controllers["country"]!.text) ) {
                            showDialog(context: context, builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text('Error'),
                                content: Text('Invalid country'),

                              );
                            });

                            return;
                          }
                          if(!<String>["Male", "Female"].contains(controllers["sexe"]!.text) ) {
                            showDialog(context: context, builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text('Error'),
                                content: Text('Invalid gender'),

                              );
                            });
                            return;
                          }

                          context.read<AuthenticationBloc>().add(
                              AuthenticationEvent.signUp(
                                  email: controllers["email"]!.text,
                                  password: controllers["password"]!.text,
                                  username: controllers["username"]!.text,
                                  dateOfBirth: controllers["birthdate"]!.text,
                                  country: controllers["country"]!.text,
                                  sexe: controllers["sexe"]!.text
                              ));

                        },
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.heebo(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF0DF5E4),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)))),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
