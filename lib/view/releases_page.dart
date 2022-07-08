import 'package:flutter/material.dart';

class ReleasesPage extends StatefulWidget {
  const ReleasesPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReleasesPage();

}

class _ReleasesPage extends State<ReleasesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Current release',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Card(
            child: Text("hello"),
          )
        ],
      ),
    );
  }

}