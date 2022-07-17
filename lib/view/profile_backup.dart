import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
          Text("Cedric Leprohon"),
          Text("cedric.leprohon@yahoo.fr"),
          Text("Mâle"),
          Text("Cedric Leprohon"),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(Icons.email, size: 18),
            label: Text("Change my email"),
          )
        ]
      ),
    );
  }

}