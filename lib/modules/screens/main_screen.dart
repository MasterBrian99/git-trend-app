import 'dart:convert';
import 'package:gittrend/widgets/repo_item.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gittrend/config/themes/color_board.dart';
import 'package:http/http.dart' as http;
import './post.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text('Hello'),
          ),
          automaticallyImplyLeading: false,
          actions: [
            PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blue,
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("First"),
                  value: 'ssss',
                ),
                PopupMenuItem(
                  child: Text("Second"),
                  value: 2,
                )
              ],
              onSelected: (item) => {print(item)},
            ),
          ],
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
              child: ErrorWidget("sss"),
            );
          }
          return Container(
            color: ColorBoard.PrimaryColor,
            child: ListView(children: [setRepoItemList(context)]),
          );
        }
        return Container(
          color: ColorBoard.PrimaryColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Text('ssss'),
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

// return Text('Title from Post JSON : ${snapshot.data!.count}');
//

/*

 snapshot.data!.items
                    .map((e) => new GestureDetector(
                          onTap: () => {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: GlassmorphicContainer(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              borderRadius: 19,
                              linearGradient: LinearGradient(colors: [
                                ColorBoard.SecondaryColor,
                                ColorBoard.SecondaryColor,
                              ]),
                              border: 0.0,
                              blur: 120,
                              borderGradient: LinearGradient(colors: [
                                Colors.blue.shade200,
                                Colors.blue.shade200
                              ]),
                              child: Column(
                                children: [Text('Hellov     dddd')],
                              ),
                            ),
                          ),
                        ))
                    .toList()

                    */
