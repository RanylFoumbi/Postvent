import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/components/added/addedEventPage.dart';
import 'ui/components/details/detailsPage.dart';
import 'ui/components/eventType/recommandedAndMostLikePage.dart';
import 'ui/components/favorite/favoriteViewPage.dart';
import 'ui/components/profiles/mainProfile/accountPage.dart';
import 'ui/components/profiles/mainProfile/userProfilePage.dart';
import 'ui/components/search/searchPage.dart';
import 'ui/homePage.dart';
import 'ui/utilities/loader.dart';

void main() {
  /*To block Screen rotation*/
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new Main());
  });
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Postvent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Ebrima"
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => HomePage(),
        '/favorites': (BuildContext context) => FavoriteView(),
        '/details': (BuildContext context) => DetailPage(),
        '/search': (BuildContext context) => SearchPage(),
        '/added': (BuildContext context) => AddedEvents(),
        '/account':(BuildContext context) => AccountPage(),
        '/userProfile':(BuildContext context) => userProfilePage(),
        '/recommendedAndMostLike':(BuildContext context) => RecommendedAndMostLikePage(),
        '/loader':(BuildContext context) => Loader(),
      },
    );
  }
}



