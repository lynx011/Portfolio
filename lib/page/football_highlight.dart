import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:json_array/page/highlight_object.dart';
import 'highlight_widget.dart';

class Highlights extends StatefulWidget {
  @override
  _HighlightsState createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  String url = 'https://www.scorebat.com/video-api/v3/';

  List<HighOb> highList = [];

  getData() async {
    var response = await http.get(
      Uri.parse(url),
    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body);
      list.forEach((element) {
        highList.add(HighOb.fromMap(element));
      });

  }
  }
    @override
    void initState() {
    getData();
    super.initState();
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Football Highlights'),
    centerTitle: true,
    ),
    body: ListView.builder(
    itemCount: highList.length,
    itemBuilder: (BuildContext context, int index) {
    return HighlightWid(highList[index]);
    }),
    );
    }
  }

