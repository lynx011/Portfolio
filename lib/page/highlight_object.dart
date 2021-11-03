
// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// class HighOb {
//   HighOb({
//     required this.title,
//     required this.competition,
//     required this.matchviewUrl,
//     required this.competitionUrl,
//     required this.thumbnail,
//     required this.date,
//     required this.videos,
//   });
//
//   String title;
//   String competition;
//   String matchviewUrl;
//   String competitionUrl;
//   String thumbnail;
//   String date;
//   List<Video> videos;
//
//   factory HighOb.fromJson(String str) => HighOb.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory HighOb.fromMap(Map<String, dynamic> json) => HighOb(
//     title: json["title"],
//     competition: json["competition"],
//     matchviewUrl: json["matchviewUrl"],
//     competitionUrl: json["competitionUrl"],
//     thumbnail: json["thumbnail"],
//     date: json["date"],
//     videos: List<Video>.from(json["videos"].map((x) => Video.fromMap(x))),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "title": title,
//     "competition": competition,
//     "matchviewUrl": matchviewUrl,
//     "competitionUrl": competitionUrl,
//     "thumbnail": thumbnail,
//     "date": date,
//     "videos": List<dynamic>.from(videos.map((x) => x.toMap())),
//   };
// }
//
// class Video {
//   Video({
//     required this.title,
//     required this.embed,
//   });
//
//   String title;
//   String embed;
//
//   factory Video.fromJson(String str) => Video.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory Video.fromMap(Map<String, dynamic> json) => Video(
//     title: json["title"],
//     embed: json["embed"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "title": title,
//     "embed": embed,
//   };
// }





// To parse this JSON data, do
//
//     final highOb = highObFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// HighOb highObFromJson(String str) => HighOb.fromJson(json.decode(str));
//
// String highObToJson(HighOb data) => json.encode(data.toJson());
//
// class HighOb {
//   HighOb({
//     required this.title,
//     required this.competition,
//     required this.matchviewUrl,
//     required this.competitionUrl,
//     required this.thumbnail,
//     required this.date,
//     required this.videos,
//   });
//
//   String title;
//   String competition;
//   String matchviewUrl;
//   String competitionUrl;
//   String thumbnail;
//   String date;
//   List<Video> videos;
//
//   factory HighOb.fromJson(Map<String, dynamic> json) => HighOb(
//     title: json["title"],
//     competition: json["competition"],
//     matchviewUrl: json["matchviewUrl"],
//     competitionUrl: json["competitionUrl"],
//     thumbnail: json["thumbnail"],
//     date: json["date"],
//     videos: List<Video>.from(json["videos"].map((x) => Video.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "title": title,
//     "competition": competition,
//     "matchviewUrl": matchviewUrl,
//     "competitionUrl": competitionUrl,
//     "thumbnail": thumbnail,
//     "date": date,
//     "videos": List<dynamic>.from(videos.map((x) => x.toJson())),
//   };
// }
//
// class Video {
//   Video({
//     required this.title,
//     required this.embed,
//   });
//
//   String title;
//   String embed;
//
//   factory Video.fromJson(Map<String, dynamic> json) => Video(
//     title: json["title"],
//     embed: json["embed"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "title": title,
//     "embed": embed,
//   };
// }

// To parse this JSON data, do
//
//     final highOb = highObFromJson(jsonString);

// To parse this JSON data, do
//
//     final highOb = highObFromMap(jsonString);


// To parse this JSON data, do
//
//     final highOb = highObFromJson(jsonString);

// To parse this JSON data, do
//
//     final highOb = highObFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class HighOb {
  HighOb({
    required this.title,
    required this.competition,
    required this.matchviewUrl,
    required this.competitionUrl,
    required this.thumbnail,
    required this.date,
    required this.videos,
  });

  String title;
  String competition;
  String matchviewUrl;
  String competitionUrl;
  String thumbnail;
  String date;
  List<Video> videos;

  factory HighOb.fromJson(String str) => HighOb.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HighOb.fromMap(Map<String, dynamic> json) => HighOb(
    title: json["title"].toString(),
    competition: json["competition"].toString(),
    matchviewUrl: json["matchviewUrl"].toString(),
    competitionUrl: json["competitionUrl"].toString(),
    thumbnail: json["thumbnail"].toString(),
    date: json["date"].toString(),
    videos: List<Video>.from(json["videos"].map((x) => Video.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "competition": competition,
    "matchviewUrl": matchviewUrl,
    "competitionUrl": competitionUrl,
    "thumbnail": thumbnail,
    "date": date,
    "videos": List<dynamic>.from(videos.map((x) => x.toMap())),
  };
}

class Video {
  Video({
    required this.title,
    required this.embed,
  });

  String title;
  String embed;

  factory Video.fromJson(String str) => Video.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Video.fromMap(Map<String, dynamic> json) => Video(
    title: json["title"].toString(),
    embed: json["embed"].toString(),
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "embed": embed,
  };
}
