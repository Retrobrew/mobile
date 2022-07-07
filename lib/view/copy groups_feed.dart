import 'package:flutter/material.dart';
import 'package:retrobrew/ui/feed/block_post.dart';

List<String> items = List<String>.generate(10000, (i) => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis malesuada nibh, ac porttitor lectus imperdiet eu. Vestibulum nec ipsum quam. Quisque vestibulum egestas purus, a convallis tellus elementum vel. Morbi a sem arcu. Curabitur viverra odio et neque maximus, eu vestibulum neque congue. Quisque dictum gravida augue, ut egestas lacus. Nullam semper augue ut turpis scelerisque, nec lobortis odio viverra. Phasellus blandit sit amet eros id laoreet. Nulla auctor tincidunt tellus, non rutrum diam tempus vel. Donec vitae justo lectus.');

class GroupsFeed extends StatelessWidget {
  final String title;

  const GroupsFeed({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {

        },
        child: Icon(Icons.create)
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://i.ytimg.com/vi/Wcp_ug1TsO0/maxresdefault.jpg"),
                )
            ),
            child: Text("hello")
          ),
          Flexible(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return BlockPost(items[index]);
              },
            ),
          )
        ],

      ),
    );
  }
}