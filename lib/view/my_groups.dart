import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/ui/groups/card_background_image.dart';

class MyGroups extends StatefulWidget {
  const MyGroups({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyGroupsState();
  }

}

class _MyGroupsState extends State<MyGroups> {

  List<String> groups = [
    "Pokemon Yellow",
    "Pokemon Green",
    "Pokemon Emerald"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: groups.length,
            itemBuilder: (context, index) {
              return CardBackgroundImage(
                title: groups[index],
                image: "https://api.lorem.space/image/game?w=640&h=480&${DateTime.now().millisecondsSinceEpoch.toString()}",
              );
            },
          )

      ),
    );
  }

}