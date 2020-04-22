
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'components/added/addedEventPage.dart';
import 'components/favorite/favoriteViewPage.dart';
import 'components/home.dart';
import 'utilities/loader.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  int _selectedIndex = 0;
  PageController _pageController;
  List<Widget> _screenList = [Home(),FavoriteView(),AddedEvents(),Loader()];

/*when init component*/
  @override
  void initState() {
    _pageController = new PageController();
     super.initState();
  }

  /*On item click in the nav bar*/
  void _onTap(index)async{
   setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }


  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       extendBody: true,
       extendBodyBehindAppBar: true,
       body: Stack(
           children: <Widget>[
             Container(
               color: Colors.white,
               height: MediaQuery.of(context).size.height,
               padding: EdgeInsets.only(bottom: 0),
               child: PageView(
                 children: _screenList,
                 controller: _pageController,
                 onPageChanged: (index) => setState(() {
                   _selectedIndex = index;
                 }),
               ),
             ),

           ]
       ),
       bottomNavigationBar:  SnakeNavigationBar(
         style: SnakeBarStyle.floating,
         snakeShape: SnakeShape.circle,
         snakeColor: Color(0xffE33838),
         backgroundColor: Colors.white,
         showUnselectedLabels: false,
         showSelectedLabels: false,
         currentIndex: _selectedIndex,
         onPositionChanged: (index) =>setState(() {
           _selectedIndex = index;
           _pageController.animateToPage(index,
               duration: Duration(milliseconds: 300), curve: Curves.ease);
         }),
         padding: EdgeInsets.all(1),
         items: [
           BottomNavigationBarItem(
               icon: Icon(AntDesign.home, color: Color(0xff707070),),
               title: Text('', style: TextStyle(color: Color(0xff707070)),)
           ),
           BottomNavigationBarItem(
               icon: Icon(FontAwesome.heart_o, color: Color(0xff707870),),
               title: Text('', style: TextStyle(color: Color(0xff707070)),)
           ),
           BottomNavigationBarItem(
               icon: Icon(AntDesign.plussquareo, color: Color(0xff707070),),
               title: Text('', style: TextStyle(color: Color(0xff707070)),)
           ),
           BottomNavigationBarItem(
               icon: Icon(FontAwesome.user_o, color: Color(0xff707070),),
               title: Text('', style: TextStyle(color: Color(0xff707070)),)),
         ],
       ),
     );
  }

  /*when the component die*/
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

