
class PostObject{
  late String title;
  late String body;

  PostObject.fromMap(Map<String,dynamic> map){
    title = map["title"];
    body = map["body"];
  }
}