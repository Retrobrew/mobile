import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/helper/countries.dart';
import 'package:retrobrew/model/profile.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key, required this.profile, required this.currentUser}) : super(key: key);

  final Profile profile;
  final bool currentUser;

  Widget _avatar() {
    if (profile.picture == null) {
      return TextAvatar(
        shape: Shape.Circular,
        size: 100,
        fontSize: 25,
        numberLetters: 2,
        text: profile.username,
      );
    }

    return CircleAvatar(
        radius: 65,
        backgroundImage: NetworkImage(
        "https://api.retrobrew.fr/users/${profile.uuid}/avatar"));
  }

  _followButton() {
    if(!currentUser) {

      return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Theme(
              data: ThemeData(
                  primarySwatch: Colors.green),
              child: ElevatedButton(
                  onPressed: () => {

                  },
                  child: Text("Follow"))));
    }

    return Container();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg-profile.gif"),
                fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            SafeArea(
              bottom: false,
              right: false,
              left: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Column(
                  children: [
                    _avatar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Wrap(
                        children: [
                          Text(profile.username,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23)
                          ),
                          profile.sex != null && profile.sex == "Female" ? const Icon(Icons.female, color: Colors.purpleAccent) : const Icon(Icons.male, color: Colors.blue),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("France  ${(profile.country != null ? getCountryEmoji(profile.country!) : "")}",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.85),
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _followButton()
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 24.0, left: 42, right: 32, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("2K",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Friends",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 12.0))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("26",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Posts",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 12.0))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("48",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Projects",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 12.0))
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ));
    ;
  }
}
