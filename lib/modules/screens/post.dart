// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  Post({
    required this.count,
    required this.msg,
    required this.items,
  });

  int count;
  String msg;
  List<Item> items;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        count: json["count"],
        msg: json["msg"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  get title => null;

  Map<String, dynamic> toJson() => {
        "count": count,
        "msg": msg,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.repo,
    required this.repoLink,
    required this.desc,
    required this.lang,
    required this.stars,
    required this.forks,
    required this.addedStars,
    required this.avatars,
  });

  String repo;
  String repoLink;
  String desc;
  String lang;
  String stars;
  String forks;
  String addedStars;
  List<String> avatars;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        repo: json["repo"],
        repoLink: json["repo_link"],
        desc: json["desc"],
        lang: json["lang"],
        stars: json["stars"],
        forks: json["forks"],
        addedStars: json["added_stars"],
        avatars: List<String>.from(json["avatars"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "repo": repo,
        "repo_link": repoLink,
        "desc": desc,
        "lang": lang,
        "stars": stars,
        "forks": forks,
        "added_stars": addedStars,
        "avatars": List<dynamic>.from(avatars.map((x) => x)),
      };
}
