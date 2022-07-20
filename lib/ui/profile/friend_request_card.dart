import 'package:flutter/material.dart';
import 'package:retrobrew/model/friend_request.dart';
import 'package:retrobrew/view/groups_feed.dart';

class FriendRequestCard extends StatelessWidget {
  final int id;
  final String title;
  final String? image;
  final Function(String id, STATUS status) onClick;

  const FriendRequestCard({Key? key, required this.id, required this.title, this.image, required this.onClick}) : super(key: key);

  BoxDecoration _coverBg() {
    if (image != null) {
      return BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(image!),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
      ));
    }
    return const BoxDecoration();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Card(
          child: InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => GroupFeed(
                                  title: "sss",
                                )))
                  },
              child: Container(
                  decoration: _coverBg(),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child:
                            Text(title, style: const TextStyle(fontSize: 18)),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 80,
                        height: 100,
                        child: Container(
                            decoration: const BoxDecoration(color: Colors.red),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  onClick(id.toString(), STATUS.refused);
                                },
                                child: Icon(Icons.close))),
                      ),
                      SizedBox(
                        width: 80,
                        height: 100,
                        child: Container(
                            decoration: const BoxDecoration(color: Colors.green),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  onClick(id.toString(), STATUS.accepted);
                                },
                                child: Icon(Icons.check))),
                      ),
                    ],
                  ))),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ));
  }
}
