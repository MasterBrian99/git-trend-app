import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/themes/color_board.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorBoard.PrimaryColor,
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              SizedBox(
                height: 220,
                width: 220,
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child:  Text('Discover the Best Trending Github Projects and Find Repository and User Information',
              style: Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,
              ),
                ),
              homeButtonWidget(context),
            ])),
      ),
    );
  }
}

Widget getTextWidgets(List<String> strings) {
  return new Column(children: strings.map((item) => new Text(item)).toList());
}

Widget homeButtonWidget(BuildContext context) {
  const List<Map> homeButtonList = [
    {"name": "Trending Repositories"},
    {"name": "Trending Languages"},
    {"name": "User Information"},
    {"name": "Repository Information"},
  ];
  return new Column(
    children: homeButtonList
        .map((item) => new Container(
            child: MaterialButton(
              onPressed: () =>
                  {Navigator.of(context).pushNamed('/main_screen')},
              child: Text(
                item['name'],
                style: Theme.of(context).textTheme.button,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            width: MediaQuery.of(context).size.width,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            decoration: ShapeDecoration(
                shape: StadiumBorder(),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorBoard.PrimaryAssentDarkColor,
                    ColorBoard.PrimaryAssentColor
                  ],
                ))))
        .toList(),
  );
}

//  Discover the Best Trending Github Projects and Find Repository and User
//         Information
/*

  return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [
              Colors.deepPurple.shade400,
              Colors.deepPurple.shade200,
            ],
          ),
          color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(43,20)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
              // elevation: MaterialStateProperty.all(3),
              shadowColor:
                  MaterialStateProperty.all(Colors.transparent),
                  ),
          onPressed: () {
           
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Text(
              'buttonText',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );*/
