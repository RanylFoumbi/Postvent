

import 'package:flutter/material.dart';
import 'package:postvent/ui/components/favorite/followingEvent.dart';
import 'package:postvent/ui/components/favorite/interestingEvent.dart';

class FavoriteView extends StatefulWidget {
  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> with SingleTickerProviderStateMixin {

  PageController _pageController;
  int _currentIndex = 0;

  final List<Widget> _fEvents = [ FollowingEvent(), InterestingEvent() ];


  @override
  void initState() {
    _pageController = new PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /*On item click in the nav bar*/
  void _onTap(index)async{
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(bottom: 0),
      child: PageView(
        children: _fEvents,
        controller: _pageController,
        onPageChanged: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
      ),
    );
  }

}