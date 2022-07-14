import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';


List<String> imgArray = [
  "assets/imgs/album-1.jpg",
  "assets/imgs/album-2.jpg",
  "assets/imgs/album-3.jpg",
  "assets/imgs/album-4.jpg",
  "assets/imgs/album-5.jpg",
  "assets/imgs/album-6.jpg"
];

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/bg-profile.gif"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: <Widget>[
                              SafeArea(
                                bottom: false,
                                right: false,
                                left: false,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0, right: 0),
                                  child: Column(
                                    children: [
                                      TextAvatar(
                                        shape: Shape.Circular,
                                        size: 100,
                                        fontSize: 25,
                                        numberLetters: 2,

                                        text: "Cedric Leprohon",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 24.0),
                                        child: Text("Cédric Leprohon",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text("France",
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 24.0, left: 42, right: 32),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("2K",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Friends",
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.8),
                                                        fontSize: 12.0))
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("26",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Posts",
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.8),
                                                        fontSize: 12.0))
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("48",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Projects",
                                                    style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(0.8),
                                                        fontSize: 12.0))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 0.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: const EdgeInsets.only(right: 8.0),
                                                  child: Theme(data: ThemeData(primarySwatch: Colors.green), child: ElevatedButton(onPressed: () => { }, child: Text("Follow")))
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                          child: SingleChildScrollView(
                              child: Padding(
                        padding: const EdgeInsets.only(
                            left: 32.0, right: 32.0, top: 42.0),
                        child: Column(children: const [
                          Text("About me",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.0)),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                          Text("ok"),
                        ]),
                      ))),
                    ),
                  ],
                ),

              ],
            );
  }
}
