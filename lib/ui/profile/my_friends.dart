import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/model/profile.dart';
import 'package:retrobrew/view/profile_view.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({Key? key, required this.profile, required this.removeButton}) : super(key: key);

  final Profile profile;
  final bool removeButton;

  Widget _avatar() {
    if (profile.picture == null) {
      return TextAvatar(
        shape: Shape.Circular,
        fontSize: 25,
        numberLetters: 2,
        text: profile.username,
      );
    }

    return CircleAvatar(
        radius: 65,
        backgroundImage: NetworkImage(
            "https://api.retrobrew.fr/users/${profile.uuid}/avatar")
      );
  }

  Widget _removeButton() {
    if(removeButton == true) {
      return Container();
    }
    return TextButton(onPressed: () => { }, child: const Text("Remove"));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: InkWell(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfileView(profile: profile);
          }))
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _avatar(),
              ),
              Text(profile.username),
              Text(profile.country ?? "Retroland"),
              Text(profile.sex ?? "Demiboy"),
              _removeButton()
            ],
          ),
        ));
  }
}
