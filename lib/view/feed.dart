import 'package:flutter/material.dart';

import '../ui/feed/block_post.dart';

class Feed extends StatelessWidget {
  Feed({Key? key}) : super(key: key);

  final List<String> items = List<String>.generate(10000, (i) => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis malesuada nibh, ac porttitor lectus imperdiet eu. Vestibulum nec ipsum quam. Quisque vestibulum egestas purus, a convallis tellus elementum vel. Morbi a sem arcu. Curabitur viverra odio et neque maximus, eu vestibulum neque congue. Quisque dictum gravida augue, ut egestas lacus. Nullam semper augue ut turpis scelerisque, nec lobortis odio viverra. Phasellus blandit sit amet eros id laoreet. Nulla auctor tincidunt tellus, non rutrum diam tempus vel. Donec vitae justo lectus.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return BlockPost(items[index]);
            },
          )
      ),
    );
  }



}