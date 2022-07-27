import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:retrobrew/model/profile.dart';
import 'package:retrobrew/provider/user_api_provider.dart';
import 'package:retrobrew/ui/profile/friend_request_card.dart';
import 'package:retrobrew/ui/profile/header_profile.dart';
import 'package:retrobrew/ui/profile/my_friends.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../bloc/authentication_bloc.dart';
import '../bloc/user_bloc.dart';
import '../model/friend_request.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key, this.profile}) : super(key: key);

  final Profile? profile;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool loading = true;
  List<FriendRequest> friendsRequest = [];
  List<Profile> friends = [];

  getAllFriends(bool isCurrentUser, String token) {
    var userApiProvider = UserApiProvider(Dio());
    userApiProvider.getMyFriends("Bearer $token").then((value) {
      setState(() {
        friends = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var authState = BlocProvider.of<AuthenticationBloc>(context);
    var userState = BlocProvider.of<UsersBloc>(context);

    return BlocProvider(
      create: (context) => UsersBloc(UserApiProvider(Dio()))
        ..add(UserEvent.onGetMyProfile(
            "Bearer ${authState.state.authentication!.access_token!}")),
      lazy: false,
      child: BlocConsumer<UsersBloc, UserState>(
        listener: (context, state) {
          setState(() {
            loading = false;
            friendsRequest =
                List<FriendRequest>.from(userState.state.friendsRequest ?? []);
            getAllFriends(true, authState.state.authentication!.access_token!);
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

          Profile profile =
              widget.profile != null ? widget.profile! : state.profile!;

          return Scaffold(
              body: CustomScrollView(slivers: [
            SliverList(
                delegate: SliverChildListDelegate(List.generate(
                    1,
                    (index) => HeaderProfile(
                        profile: profile,
                        currentUser: widget.profile == null)))),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: (widget.profile == null
                  ? const Text("Friends request",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0))
                  : Container()),
            )),
            SliverList(
                delegate: SliverChildListDelegate(List.generate(
                    widget.profile == null && friendsRequest.isNotEmpty
                        ? friendsRequest.length
                    : 0, (index) {
              if (!friendsRequest.isNotEmpty) {
                return const Center(child: Text("You don't have any request"));
              }
              return FriendRequestCard(
                id: userState.state.friendsRequest![index].id,
                title:
                    userState.state.friendsRequest![index].requester.username!,
                image: userState.state.friendsRequest![index].requester.picture,
                onClick: (String id, STATUS status) {
                  if (status == STATUS.accepted) {
                    showTopSnackBar(
                      context,
                      CustomSnackBar.success(
                        message:
                            "You are now friend with ${friendsRequest[index].requester.username!}",
                      ),
                    );
                    userState.add(UserEvent.onResponseRequest(
                        authState.state.authentication!.access_token!,
                        id,
                        STATUS.accepted));
                  } else {
                    showTopSnackBar(
                      context,
                      const CustomSnackBar.info(
                        message: "You declined the invitation",
                      ),
                    );
                    userState.add(UserEvent.onResponseRequest(
                        authState.state.authentication!.access_token!,
                        id,
                        STATUS.refused));
                  }

                  setState(() {
                    friendsRequest.removeAt(index);
                  });
                },
              );
            }))),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${friends.length} friends",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17.0)),
            )),
            SliverGrid.count(
              crossAxisCount: 2,
              children: List.generate(
                  friends.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: MyFriends(
                            profile: friends[index],
                            removeButton: widget.profile != null),
                      )),
            ),
          ]));
        },
      ),
    );
  }
}
