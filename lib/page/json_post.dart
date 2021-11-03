import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:json_array/page/Object.dart';
import 'package:json_array/page/widget.dart';

class JsonPost extends StatefulWidget {
  @override
  _JsonPostState createState() => _JsonPostState();
}

class _JsonPostState extends State<JsonPost> {
  var requestUrl = "https://jsonplaceholder.typicode.com/posts";
  List<PostObject> postOb = [];
  bool isLoading = true;

  getData()async{
    var response = await http.get(Uri.parse(requestUrl),);
    if(response.statusCode==200){
      print(response.body);
    }else{
      print('error');
    }

    List<dynamic> list = json.decode(response.body);
    list.forEach((element) {
      postOb.add(PostObject.fromMap(element),);
    });
    setState(() {

    });
  }

  @override
  void initState() {
    getData();
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Array Post'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: postOb.length,
          itemBuilder: (context,index){
          return isLoading?CircularProgressIndicator():PostWidget(postOb[index]);

      }),
    );
  }
}
