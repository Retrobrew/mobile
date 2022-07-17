import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:retrobrew/provider/user_api_provider.dart';
import 'package:retrobrew/ui/profile/header_profile.dart';
import 'package:retrobrew/ui/profile/my_friends.dart';
import 'package:retrobrew/view/my_groups.dart';

import '../bloc/authentication_bloc.dart';
import '../bloc/user_bloc.dart';
import '../ui/groups/card_background_image.dart';

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
      create: (context) => UsersBloc(UserApiProvider(Dio()))
        ..add(UserEvent.onGetMyProfile(
            "Bearer ${state.state.authentication!.access_token!}")),
      lazy: false,
      child: BlocConsumer<UsersBloc, UserState>(
        listener: (context, state) {
          setState(() {
            loading = false;
          });
        },
        builder: (context, state) {
          if (loading) {
            return Scaffold(
              body: Center(
                child: LoadingAnimationWidget.inkDrop(
                    color: Colors.deepPurple, size: 30),
              ),
            );
          }
          return Scaffold(
              body: CustomScrollView(slivers: [
            SliverList(
                delegate: SliverChildListDelegate(List.generate(
                    1, (index) => HeaderProfile(profile: state.profile!)))),
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Friends request",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0)),
            )),
            SliverList(
                delegate: SliverChildListDelegate(List.generate(5, (index) {
              return CardBackgroundImage(
                title: "Amélie",
                image:
                    "https://api.lorem.space/image/game?w=640&h=480&${DateTime.now().millisecondsSinceEpoch.toString()}",
              );
            }))),
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("My friends",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0)),
            )),
            SliverGrid.count(
              crossAxisCount: 2,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: MyFriends(profile: state.profile!),
                      )),
            ),
          ]));
        },
      ),
    );
  }
}
