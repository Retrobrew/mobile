import 'package:flutter/material.dart';

class QuickGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child:
        Column(
      children: [
        Text(
            "Quick group",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )
        ),
        Flexible(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              ),
              CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/pokemon/23289795-190-fre-FR/Pokemon.jpg"),
                  backgroundColor: Colors.transparent
              )
            ],
          ),
        )
      ],
    ));
  }

}