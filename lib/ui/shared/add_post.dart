import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
                decoration: InputDecoration(
                  border: null,
                  hintText: 'Add a title to your post!',
                )
            ),
            const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'How do you feel today?',
                )
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () => {
                    print("hello")
                  },
                  child: Text("Upload an image"),
                ),
              ],
            ),
            TextButton(
              onPressed: () => {
                print("hello")
              },
              child: Row(
                textDirection: TextDirection.rtl,
                children: const [
                  Text("Create"),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.create),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

}