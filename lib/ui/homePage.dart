
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'utilities/loader.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool _loading = false;
  int _selectedIndex = 0;
  PageController _pageController;
  List<Widget> _screenList = [Loader(),Text("2",style: TextStyle(color: Colors.black),),Loader(),Text("2",style: TextStyle(color: Colors.black),)];

/*when init component*/
  @override
  void initState() {
    _pageController = PageController();
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

    /*get the size of the screen*/
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

     return Scaffold(
       appBar: PreferredSize(
         child:AppBar(
            title: Container(
              padding: EdgeInsets.only(top: 20),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Postvent",
                        style: TextStyle(fontSize: 30,fontFamily: "CameronSans",fontWeight: FontWeight.w300,color: Color(0xff707070)),
                      ),

                      SizedBox(width: screenWidth/2.9,),

                      IconButton(
                        icon: Icon(AntDesign.search1,color: Color(0xff707070),size: 20,),
                        onPressed: () {
                        },
                      ),

                      IconButton(
                        icon: Icon(FontAwesome.bell_o,color: Color(0xff707070),size: 20,),
                        onPressed: () {
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          backgroundColor: Colors.white,
           elevation: 0.0,
           bottom: PreferredSize(
               child: Container(
                 padding: EdgeInsets.only(left: 17,bottom: 10),
                 alignment: Alignment.centerLeft,
                 child: Text("Today,03 March 2020",
                   style: TextStyle(fontSize: 13,fontFamily: "Ebrima",fontWeight: FontWeight.w400,color: Color(0xff707070)),
                 ),
               ),
               preferredSize: null)
         ),
         preferredSize: Size.fromHeight(80.0), // here the desired height
     ),
       extendBodyBehindAppBar: true,
       body: Stack(
           children: <Widget>[
             Container(
               height: MediaQuery.of(context).size.height,
               padding: EdgeInsets.only(bottom: 108),
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
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.add),
         backgroundColor: Colors.red,
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BubbleBottomBar(
         opacity: .2,
         currentIndex: _selectedIndex,
         onTap: _onTap,
         borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
         elevation: 8,
         hasNotch: true, //new
         hasInk: true, //new, gives a cute ink effect
         items: <BubbleBottomBarItem>[
           BubbleBottomBarItem(backgroundColor: Color(0xffE33838), icon: Icon(AntDesign.home, color: Color(0xff707070),), activeIcon: Icon(AntDesign.home, color: Colors.white,), title: Text("")),
           BubbleBottomBarItem(backgroundColor: Color(0xffE33838), icon: Icon(FontAwesome.heart_o, color: Color(0xff707070),), activeIcon: Icon(FontAwesome.heart_o, color: Colors.white,), title: Text("")),
           BubbleBottomBarItem(backgroundColor: Color(0xffE33838), icon: Icon(AntDesign.plus, color: Color(0xff707070),), activeIcon: Icon(AntDesign.plus, color: Colors.white,), title: Text("")),
           BubbleBottomBarItem(backgroundColor: Color(0xffE33838), icon: Icon(FontAwesome.user_o, color: Color(0xff707070),), activeIcon: Icon(FontAwesome.user_o, color: Colors.white,), title: Text(""))
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

