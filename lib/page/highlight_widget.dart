import 'package:flutter/material.dart';
import 'package:json_array/page/highlight_object.dart';

class HighlightWid extends StatelessWidget {
  HighOb hlob;
  HighlightWid(this.hlob);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(hlob.title),
        ],
      ),
    );
  }
}
