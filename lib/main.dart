import 'package:flutter/material.dart';

import 'ui/components/details/details.dart';
import 'ui/components/favorite/favoriteEvent.dart';
import 'ui/homePage.dart';
import 'ui/utilities/loader.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Postvent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => HomePage(),
        '/favorites': (BuildContext context) => FavoriteEvent(),
        '/details': (BuildContext context) => DetailPage(),
        '/loader':(BuildContext context) => Loader(),
      },
    );
  }
}


