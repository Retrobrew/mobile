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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            pinned: false,

            floating: true,
            snap: true,
            backgroundColor: Colors.green,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://i.ytimg.com/vi/Wcp_ug1TsO0/maxresdefault.jpg", fit: BoxFit.cover),
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ],
                ),
                title: const Text('Tabs Demo'),
              ),
              body: const TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),

          /*SliverList(
            delegate: SliverChildListDelegate(
              List.generate(items.length, (index) {
                return BlockPost(items[index]);
              })
            ),
          )*/

        ],
      )

    );
  }
}