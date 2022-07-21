import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retrobrew/animation/fadeanimation.dart';
import 'package:retrobrew/view/login.dart';
import 'package:retrobrew/view/sign_in_request.dart';
import 'package:retrobrew/view/signup.dart';
import 'package:video_player/video_player.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => _WelcomePage();

}

class _WelcomePage extends State<WelcomePage> {

  late VideoPlayerController _controller;

  @override
  void initState() {
      super.initState();
      _controller = VideoPlayerController.asset("assets/intro.mp4")
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
    return Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              child: Opacity(opacity: 0.5,
              child:
              SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,

                  child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller)
                  )
                ),
              )
        ),
            ),
            FadeAnimation(
                delay: 1,
                child: Image.asset("assets/logo.png")
            ),
            FadeAnimation(delay: 1.5, child: Column(
              children: [
                Spacer(),
                Center(
                child: TextButton(
                    onPressed: (){
                      _controller.pause();
                      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

                      Navigator.of(context).pushNamed('/login');

                    },
                    child: Text("Login",style: GoogleFonts.heebo(
                      color: Colors.white,
                      letterSpacing: 0.5,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                    style:  TextButton.styleFrom(
                      elevation: 20,

                        backgroundColor: const Color(0xFF333553),
                        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        )
                    )
                )),
                Text("", style: TextStyle(
                  fontSize: 10
                )),
                Container(
                  width: 250,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil("/app", (route) => false);
                      },
                      child: Text("Guest mode",style: GoogleFonts.heebo(
                        color: Colors.white,
                        letterSpacing: 0.5,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      style:  TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 20,
                          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 60),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: const Color(0xFF333553),
                                  width: 5
                            ),
                              borderRadius: BorderRadius.circular(30.0)
                          )
                      )
                  )
                )

              ],
            ))
          ],
        ),
    );
  }


}