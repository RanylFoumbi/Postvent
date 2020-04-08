import 'package:flutter/material.dart';

import 'ui/components/details/details.dart';
import 'ui/components/favorite/followingEvent.dart';
import 'ui/components/search/search.dart';
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
        '/favorites': (BuildContext context) => FollowingEvent(),
        '/details': (BuildContext context) => DetailPage(),
        '/search': (BuildContext context) => SearchPage(),
        '/loader':(BuildContext context) => Loader(),
      },
    );
  }
}


