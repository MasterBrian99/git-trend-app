import 'package:flutter/material.dart';
import 'config/routes/route_generator.dart';
import './config/themes/main_styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
          textTheme:
              TextTheme(button:ButtonTextStyle,headline5: InformationTextStyle)),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesllo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hesllo'),
        ),
      ),
    );
  }
}
