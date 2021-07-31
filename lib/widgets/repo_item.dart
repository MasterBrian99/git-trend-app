import 'package:flutter/material.dart';
import 'package:gittrend/config/icons/my_flutter_app_icons.dart';
import 'package:gittrend/config/themes/color_board.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget setRepoItemList(
  BuildContext context,
  String repo,
  String desc,
  String lang,
  String stars,
  String fork,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child: GlassmorphicContainer(
      width: MediaQuery.of(context).size.width,
      height: 260,
      borderRadius: 19,
      linearGradient: LinearGradient(colors: [
        ColorBoard.SecondaryColor,
        ColorBoard.SecondaryColor,
      ]),
      border: 0.2,
      blur: 220,
      borderGradient:
          LinearGradient(colors: [Colors.blue.shade200, Colors.blue.shade200]),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            children: [
              Text(
                repo.split('/')[1],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            MyFlutterAppIcon.code,
                            color: ColorBoard.PrimaryAssentColor,
                            size: 24.0,
                          ),
                          Text(
                            lang,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                          Text('Language',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorBoard.PrimaryAssentColor,
                            size: 24.0,
                          ),
                          Text(
                            stars,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                          Text('Stars',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            MyFlutterAppIcon.git_merge,
                            color: ColorBoard.PrimaryAssentColor,
                            size: 24.0,
                          ),
                          Text(
                            fork,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                          Text('Forks',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ]),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _repoSmItem(IconData iconName, String name) {
  return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Icon(
            iconName,
            color: ColorBoard.PrimaryAssentColor,
            size: 24.0,
          ),
          Text(
            '1222',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
          Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ));
}

const List<Map> homeButtonList = [
  {"icon": Icons.star, "name": "Stars"},
  {"icon": MyFlutterAppIcon.git_merge, "name": "Forks"},
  {"icon": MyFlutterAppIcon.code, "name": "Language"},
];
