import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:badges/badges.dart';
import 'package:retrobrew/bloc/user_bloc.dart';
import 'package:retrobrew/view/feed.dart';
import 'package:retrobrew/view/my_groups.dart';
import 'package:retrobrew/view/profile_view.dart';
import 'package:retrobrew/view/sign_in_request.dart';

import '../bloc/authentication_bloc.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int selectedIndex = 0;
  int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18, vertical: 12);
  double gap = 10;
  bool loading = true;

  PageController controller = PageController();

  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal
  ];

  @override
  void initState() {
    super.initState();
  }

  Widget navigate(String? token) {
    if (selectedIndex == 3) {
      return token == null ? const SignInRequest() : const ProfileView();
    } else if (selectedIndex == 1) {
      return token == null ? const SignInRequest() : MyGroups();
    }

    return Feed(accessToken: token);
  }


  @override
  Widget build(BuildContext context) {
    var userState = BlocProvider.of<UsersBloc>(context);
    var access = BlocProvider.of<AuthenticationBloc>(context);

    if(access.state.authentication?.access_token != null) {
      userState.add(UserEvent.onGetFriendsRequestReceived(access.state.authentication!.access_token!));
    }

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          body: PageView.builder(
            onPageChanged: (page) {
              setState(() {
                selectedIndex = page;

              });
            },
            controller: controller,
            itemBuilder: (context, position) {
              return navigate(state.authentication?.access_token);
            },
            itemCount: 4,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(.4),
                  offset: Offset(0, 25),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 3.0, vertical: 3),
                child: GNav(
                  tabs: [
                    GButton(
                      gap: gap,
                      iconActiveColor: Colors.purple,
                      iconColor: Colors.black,
                      textColor: Colors.purple,
                      backgroundColor: Colors.purple.withOpacity(.2),
                      iconSize: 24,
                      padding: padding,
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      gap: gap,
                      iconActiveColor: Colors.pink,
                      iconColor: Colors.black,
                      textColor: Colors.pink,
                      backgroundColor: Colors.pink.withOpacity(.2),
                      iconSize: 24,
                      padding: padding,
                      icon: LineIcons.heart,
                      text: 'My groups',

                    ),
                    GButton(
                      gap: gap,
                      iconActiveColor: Colors.amber[600],
                      iconColor: Colors.black,
                      textColor: Colors.amber[600],
                      backgroundColor: Colors.amber[600]!.withOpacity(.2),
                      iconSize: 24,
                      padding: padding,
                      icon: LineIcons.search,
                      text: 'Discovery',
                    ),
                    GButton(
                      gap: gap,
                      iconActiveColor: Colors.teal,
                      iconColor: Colors.black,
                      textColor: Colors.teal,
                      backgroundColor: Colors.teal.withOpacity(.2),
                      iconSize: 24,
                      padding: padding,
                      icon: LineIcons.user,
                      leading: Column(
                        children: [
                          _picture(userState.state.friendsRequest?.length ?? 0, userState.state.profile?.picture, state.authentication?.username ?? "Guest"),
                        ],
                      ),
                      text: state.authentication?.username ?? "Guest",
                    )
                  ],
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                    controller.jumpToPage(index);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _avatar(String? picture, String? username) {
    if(picture == null) {
      return TextAvatar(
        shape: Shape.Circular,
        upperCase: true,
        size: 10,
        numberLetters: 2,
        text: username,
      );
    }

    return CircleAvatar(
      radius: 12,
      backgroundImage: NetworkImage(
        picture
      ),
    );
  }

  _picture(int i, String? picture, String? username) {
    if(i > 0) {
      return Badge(
        badgeColor: Colors.teal.shade100,
        elevation: 0,
        position: BadgePosition.topEnd(top: -12, end: -12),
        badgeContent: Text(
          i.toString(),
          style: TextStyle(color: Colors.teal.shade900),
        ),
        child:
          _avatar(picture, username)
      );
    }

    return CircleAvatar(
      radius: 12,
      child: _avatar(picture, username)
    );


  }
}
