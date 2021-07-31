import 'dart:convert';
import 'package:gittrend/widgets/repo_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gittrend/config/themes/color_board.dart';
import 'package:http/http.dart' as http;
import './post.dart';

class MainScreen extends StatelessWidget {
  late final Object _args;

  MainScreen(Object? args) {
    this._args = args!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(_args.toString()),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: ColorBoard.PrimaryColor,
          shadowColor: Colors.transparent,
        ),
        body: setRepoList(context));
  }
}

Widget setRepoList(BuildContext context) {
  return FutureBuilder<Post>(
      future: getPost(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container(
              color: ColorBoard.PrimaryColor,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Container(
            color: ColorBoard.PrimaryColor,
            child: ListView(
                children: snapshot.data!.items
                    .map((e) => setRepoItemList(
                        context, e.repo, e.desc, e.lang, e.stars, e.forks))
                    .toList()),
          );
        }
        return Container(
          color: ColorBoard.PrimaryColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
}

createAlbum() async {
  print(await http
      .read(Uri.parse('https://pacific-ridge-09843.herokuapp.com/repo')));
}

Post postFromJson(String str) {
  final jsonData = json.decode(str);
  return Post.fromJson(jsonData);
}

Future<Post> getPost() async {
  final response = await http
      .get(Uri.parse('https://pacific-ridge-09843.herokuapp.com/repo'));
  return postFromJson(response.body);
}
