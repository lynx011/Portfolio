import 'package:flutter/material.dart';
import 'package:json_array/page/Object.dart';

class PostWidget extends StatelessWidget {
  PostObject post;
  PostWidget(this.post);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}
