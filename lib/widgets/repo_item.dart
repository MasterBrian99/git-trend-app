import 'package:flutter/material.dart';
import 'package:gittrend/config/icons/my_flutter_app_icons.dart';
import 'package:gittrend/config/themes/color_board.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget setRepoItemList(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child: GlassmorphicContainer(
      width: MediaQuery.of(context).size.width,
      height: 300,
      borderRadius: 19,
      linearGradient: LinearGradient(colors: [
        ColorBoard.SecondaryColor,
        ColorBoard.SecondaryColor,
      ]),
      border: 0.0,
      blur: 120,
      borderGradient:
          LinearGradient(colors: [Colors.blue.shade200, Colors.blue.shade200]),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: homeButtonList
                    .map((e) => _repoSmItem(e['icon'], e['name']))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _repoSmItem(IconData iconName, String name) {
  return Column(
    children: [
      Icon(
        iconName,
        color: Colors.pink,
        size: 24.0,
      ),
      Text('12'),
      Text(name)
    ],
  );
}

const List<Map> homeButtonList = [
  {"icon": Icons.star, "name": "Stars"},
  {"icon": MyFlutterAppIcon.git_merge, "name": "Forks"},
  {"icon": MyFlutterAppIcon.code, "name": "Lang"},
];
