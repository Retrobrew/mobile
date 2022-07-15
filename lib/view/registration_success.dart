import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/bloc/authentication_bloc.dart';
import 'package:video_player/video_player.dart';

import '../animation/fadeanimation.dart';
import 'application.dart';

class RegistrationSuccess extends StatefulWidget {
  const RegistrationSuccess({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegistrationSuccess();
}

class _RegistrationSuccess extends State<RegistrationSuccess> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/success.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);

        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => Application()));
    });

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
    }, builder: (context, state) {
      return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Opacity(
                    opacity: 0.5,
                    child: SizedBox.expand(
                      child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                              width: _controller.value.size.width,
                              height: _controller.value.size.height,
                              child: VideoPlayer(_controller))),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeAnimation(
                      delay: 1,
                      child: const Center(
                        child: Text(
                            "🎉",
                          style: TextStyle(fontSize:  60)
                        ),
                      )),
                  FadeAnimation(delay: 1.2, child: const Text("Welcome",
                      style: TextStyle(fontSize:  60, color: Colors.white)
                  )),
                  FadeAnimation(delay: 1.2, child: Text(state.authentication!.username,
                      style: const TextStyle(fontSize:  60, color: Colors.white)
                  ))

                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
