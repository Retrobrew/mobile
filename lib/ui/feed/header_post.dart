import 'package:flutter/material.dart';
import 'package:retrobrew/model/user.dart';
import 'package:retrobrew/ui/shared/tag.dart';

import '../../helper/color_generator.dart';
import '../../helper/countries.dart';

class HeaderPost extends StatelessWidget {
  HeaderPost({required this.title, required this.author, required this.groupName});

  final String title;
  final User author;
  final String groupName;


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Tag(groupName, groupName != "Missingno" ? generateColor(groupName) : Colors.grey),
              SizedBox(width: 5),
              Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Text("posted by ${author.username}",
              style: const TextStyle(
                fontStyle: FontStyle.italic
              ))
            ],
          )

        ],
      ),
    );
  }}