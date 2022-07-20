import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/model/profile.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({Key? key, required this.profile}) : super(key: key);

  final Profile profile;

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
            profile.picture!)
      );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _avatar(),
            ),
            Text(profile.username),
            Text(profile.country ?? "Retroland"),
            Text(profile.sex ?? "Demiboy"),
            TextButton(onPressed: () => { }, child: Text("Remove"))
          ],
        ));
  }
}
