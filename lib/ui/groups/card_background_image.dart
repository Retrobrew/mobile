import 'package:flutter/material.dart';
import 'package:retrobrew/view/groups_feed.dart';

class CardBackgroundImage extends StatelessWidget {

  final String title;
  final String image;
  final Function() onTap;

  const CardBackgroundImage({Key? key, required this.title, required this.image, required this.onTap}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child:
        Card(
          child: InkWell(
            onTap: ()  {
              onTap();
            },
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20
                    ),
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 18
                        )),
                  ),
                ],
              )
          )
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        )
    );
  }

}