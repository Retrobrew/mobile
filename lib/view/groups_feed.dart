import 'package:flutter/material.dart';
import 'package:retrobrew/ui/feed/block_post.dart';
import 'dart:math' as math;

import 'package:retrobrew/view/releases_page.dart';

List<String> items = List<String>.generate(10000, (i) => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis malesuada nibh, ac porttitor lectus imperdiet eu. Vestibulum nec ipsum quam. Quisque vestibulum egestas purus, a convallis tellus elementum vel. Morbi a sem arcu. Curabitur viverra odio et neque maximus, eu vestibulum neque congue. Quisque dictum gravida augue, ut egestas lacus. Nullam semper augue ut turpis scelerisque, nec lobortis odio viverra. Phasellus blandit sit amet eros id laoreet. Nulla auctor tincidunt tellus, non rutrum diam tempus vel. Donec vitae justo lectus.');

class GroupFeed extends StatefulWidget {
  GroupFeed({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _GroupsFeed createState() => _GroupsFeed();
}


class _GroupsFeed extends State<GroupFeed> with SingleTickerProviderStateMixin  {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {

        },
        child: Icon(Icons.create)
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text(widget.title),
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Colors.green,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network("https://i.ytimg.com/vi/Wcp_ug1TsO0/maxresdefault.jpg", fit: BoxFit.cover),
              ),
              bottom: TabBar(
                  indicatorColor: Colors.black,
                  labelPadding: const EdgeInsets.only(
                    top: 16,
                    bottom: 12,
                  ),
                  controller: _tabController,
                  tabs: [
                    Text("Posts"),
                    Text("Releases"),
                  ]),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
        CustomScrollView(
        slivers: [
        SliverList(
                  delegate: SliverChildListDelegate(
                    List.generate(items.length, (index) {
                      return BlockPost(items[index]);
                    })
                  )
        ) ]),
            const ReleasesPage(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () => {
  //
  //       },
  //       child: Icon(Icons.create)
  //     ),
  //     body: CustomScrollView(
  //       slivers: <Widget>[
  //         SliverAppBar(
  //           title: Text('SliverAppBar'),
  //           pinned: false,
  //           floating: true,
  //           snap: true,
  //           backgroundColor: Colors.green,
  //           expandedHeight: 150.0,
  //           flexibleSpace: FlexibleSpaceBar(
  //             background: Image.network("https://i.ytimg.com/vi/Wcp_ug1TsO0/maxresdefault.jpg", fit: BoxFit.cover),
  //           ),
  //         ),
  //         SliverPersistentHeader(
  //           delegate: SliverPersistentHeaderDelegate(
  //             sliver: TabBar(
  //               tabs: [
  //                 Tab(icon: Icon(Icons.flight)),
  //                 Tab(icon: Icon(Icons.directions_transit)),
  //                 Tab(icon: Icon(Icons.directions_car)),
  //               ],
  //             ),
  //           ),
  //           pinned: false,
  //         ),
  //         SliverList(
  //           delegate: SliverChildListDelegate(
  //             List.generate(items.length, (index) {
  //               return BlockPost(items[index]);
  //             })
  //           ),
  //         )
  //
  //       ],
  //     )
  //
  //   );
  // }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}