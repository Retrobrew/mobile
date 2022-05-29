import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:badges/badges.dart';
import 'package:retrobrew/view/feed.dart';
import 'package:retrobrew/view/my_groups.dart';
import 'package:retrobrew/view/profile.dart';


class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int selectedIndex = 0;
  int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18, vertical: 12);
  double gap = 10;

  PageController controller = PageController();

  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal
  ];

  List<String> appBarTitle = [
    "Feeds",
    "Profile"
  ];

  @override
  void initState() {
    super.initState();
  }

  Widget navigate() {
    if(selectedIndex == 3) {
      return const Profile();
    }else if(selectedIndex == 1){
      return const MyGroups();
    }

    return Feed();
  }

  String getTitle() {
    if(selectedIndex == 3) {
      return "Profile";
    }else if(selectedIndex == 1) {
      return "My groups";
    }

    return "Feeds";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text(
            getTitle()
          ),
        ),
        body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
              badge = badge + 1;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return navigate();
          },
          itemCount: 4,
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
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
                    leading: selectedIndex == 1 || badge == 0
                        ? null
                        : Badge(
                      badgeColor: Colors.red.shade100,
                      elevation: 0,
                      position: BadgePosition.topEnd(top: -12, end: -12),
                      badgeContent: Text(
                        badge.toString(),
                        style: TextStyle(color: Colors.red.shade900),
                      ),
                      child: Icon(
                        LineIcons.heart,
                        color: selectedIndex == 1
                            ? Colors.pink
                            : Colors.black,
                      ),
                    ),
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
                    text: 'Search',
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
                    leading: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                        'https://sooxt98.space/content/images/size/w100/2019/01/profile.png',
                      ),
                    ),
                    text: 'Cédric',
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
      ),
    );
  }
}