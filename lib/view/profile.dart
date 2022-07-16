import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/provider/user_api_provider.dart';
import 'package:retrobrew/ui/profile/header_profile.dart';

import '../bloc/authentication_bloc.dart';
import '../bloc/user_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool loading = true;

  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<AuthenticationBloc>(context);

    return BlocProvider(
      create: (context) => UsersBloc(UserApiProvider(Dio()))..add(UserEvent.onGetMyProfile("Bearer ${state.state.authentication!.access_token!}")),
      lazy: false,
      child: BlocConsumer<UsersBloc, UserState>(
        listener: (context, state) {
          setState(() {
            loading = false;
          });
        },
        builder: (context, state) {
          if(loading) {
            return Text("Loading");
          }
          return Stack(
            children: <Widget>[
              Column(
                children: [
                  HeaderProfile(profile: state.profile!),
                  Flexible(
                    flex: 2,
                    child: Container(
                        child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 32.0, right: 32.0, top: 42.0),
                              child: Column(children: const [
                                Text("About me",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.0)),
                                Text("ok"),
                              ]),
                            ))),
                  ),
                ],
              ),

            ],
          );
        },
      ),
    );
  }
}