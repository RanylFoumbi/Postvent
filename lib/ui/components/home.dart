import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'eventType/recommandedAndMostLikePage.dart';


class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ScrollController _scrollController = new ScrollController();

  Widget _getBestEvent(screenSize){
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("/details");
            },
            child: Card(
              margin: EdgeInsets.only(right: 10,left: 16,top: 5,bottom: 5),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(width: 0,style: BorderStyle.none),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                    image: AssetImage("asset/images/image0.jpg"),
                  /*image: new NetworkImage("https//."),*/
                    fit: BoxFit.cover
                  )
                ),
                width: screenSize.width/1.1,
                height: screenSize.height/3.5,
                  child: new Stack(
                    children: <Widget>[

                      Container(
                        width: screenSize.width/1.1,
                        height: screenSize.height/3.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          gradient: LinearGradient(
                            colors: [Colors.black54, Colors.black.withOpacity(0)],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )
                        ),
                        padding: new EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
                        child: Stack(
                          children: <Widget>[
                            new Positioned(
                                left: 0.0,
                                bottom: 5.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text('Big Ben History',
                                        style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "Ebrima bold",
                                          fontSize: 10.0,
                                        )
                                    ),
                                    const SizedBox(height: 3,),
                                    new Text('Tuesday, 31 March 2020',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Ebrima",
                                          fontSize: 8.0,
                                        )
                                    ),
                                  ],
                                )
                            ),
                            new Positioned(
                              right: 0.0,
                              bottom: 2.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                      height: 17,
                                      width: 17,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white
                                      ),
                                      child: Icon(FontAwesome.heart_o, color: Color(0xffE33838),size: 7,),
                                    ),
                                  ),

                                  const SizedBox(width: 5,),

                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xffE33838)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('16.000Fcfa',
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "Ebrima bold",
                                          fontSize: 8.0,
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ),
          );
      }
    );
  }

  Widget _getRecommendedEvent(screenSize){
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("/details");
            },
            child: Card(
              margin: EdgeInsets.only(right: 0,left: 16,top: 5,bottom: 5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(width: 0,style: BorderStyle.none),
              ),
              child: Container(
                  width: screenSize.width/2.3,
                  height: screenSize.height/4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                          image: AssetImage("asset/images/image2.jpg"),
                          /*image: new NetworkImage("https//."),*/
                          fit: BoxFit.cover
                      )
                  ),
                  child: new Stack(
                    children: <Widget>[

                      Container(
                        width: screenSize.width/2.3,
                        height: screenSize.height/4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(
                              colors: [Colors.black54, Colors.black.withOpacity(0)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            )
                        ),
                        padding: new EdgeInsets.only(left: 8.0, bottom: 4.0, right: 8.0),
                        child: Stack(
                          children: <Widget>[
                            new Positioned(
                                left: 0.0,
                                bottom: 5.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text('Big Ben History',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Ebrima bold",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.5,
                                        )
                                    ),
                                    const SizedBox(height: 2,),
                                    new Text('Tuesday, 31 March 2020',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Ebrima",
                                          fontSize: 7.5,
                                        )
                                    ),
                                  ],
                                )
                            ),
                            new Positioned(
                                right: 0.0,
                                bottom: 5.0,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white
                                    ),
                                    child: Icon(FontAwesome.heart_o, color: Color(0xffE33838),size: 8,),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ),
          );
        }
    );
  }

  /* This block will display ads*/
  Widget _getNews(screenSize){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed("/details");
      },
      child: Card(
        margin: EdgeInsets.only(right: 15,left: 16,top: 5,bottom: 5),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(width: 0,style: BorderStyle.none),
        ),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                    image: AssetImage("asset/images/image0.jpg"),
                    /*image: new NetworkImage("https//."),*/
                    fit: BoxFit.cover
                )
            ),
            width: screenSize.width/1.1,
            height: screenSize.height/3.5,
            child: new Stack(
              children: <Widget>[

                Container(
                  width: screenSize.width/1.1,
                  height: screenSize.height/3.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      gradient: LinearGradient(
                        colors: [Colors.black54, Colors.black.withOpacity(0)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )
                  ),
                  padding: new EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
                  child: Stack(
                    children: <Widget>[
                      new Positioned(
                          left: 0.0,
                          bottom: 5.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text('Big Ben History',
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Ebrima bold",
                                    fontSize: 10.0,
                                  )
                              ),
                              const SizedBox(height: 3,),
                              new Text('Tuesday, 31 March 2020',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Ebrima",
                                    fontSize: 8.0,
                                  )
                              ),
                            ],
                          )
                      ),
                      new Positioned(
                        right: 0.0,
                        bottom: 2.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white
                                ),
                                child: Icon(FontAwesome.heart_o, color: Color(0xffE33838),size: 7,),
                              ),
                            ),

                            const SizedBox(width: 5,),

                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffE33838)
                              ),
                              alignment: Alignment.center,
                              child: Text('16.000Fcfa',
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Ebrima bold",
                                    fontSize: 8.0,
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            )
        ),
      ),
    );
  }

  Widget _getMostLikedEvent(screenSize){
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("/details");
            },
            child: Card(
              margin: EdgeInsets.only(right: 0,left: 16,top: 5,bottom: 5),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(width: 0,style: BorderStyle.none),
              ),
              child: Container(
                  width: screenSize.width/2.3,
                  height: screenSize.height/4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                          image: AssetImage("asset/images/image2.jpg"),
                          /*image: new NetworkImage("https//."),*/
                          fit: BoxFit.cover
                      )
                  ),
                  child: new Stack(
                    children: <Widget>[

                      Container(
                        width: screenSize.width/2.3,
                        height: screenSize.height/4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(
                              colors: [Colors.black54, Colors.black.withOpacity(0)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            )
                        ),
                        padding: new EdgeInsets.only(left: 8.0, bottom: 4.0, right: 8.0),
                        child: Stack(
                          children: <Widget>[
                            new Positioned(
                                left: 0.0,
                                bottom: 5.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text('Big Ben History',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Ebrima bold",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.5,
                                        )
                                    ),
                                    const SizedBox(height: 2,),
                                    new Text('Tuesday, 31 March 2020',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Ebrima",
                                          fontSize: 7.5,
                                        )
                                    ),
                                  ],
                                )
                            ),
                            new Positioned(
                                right: 0.0,
                                bottom: 5.0,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white
                                    ),
                                    child: Icon(FontAwesome.heart_o, color: Color(0xffE33838),size: 8,),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*get the size of the screen*/
    Size _screenSize = MediaQuery.of(context).size;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            child:AppBar(
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Postvent",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: "CameronSans",
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7)
                            ),
                          ),

                          new Spacer(),

                          IconButton(
                            icon: Icon(AntDesign.search1,color: Color(0xff707070),size: 18,),
                            onPressed: () {
                              Navigator.of(context).pushNamed("/search");
                            },
                          ),

                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 33,
                              width: 33,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Color(0xff707070).withOpacity(0.2),
                                      offset: Offset(0, 1),
                                    )
                                  ]
                              ),
                              child: Icon(FontAwesome.bell_o,color: Color(0xff707070),size: 14,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0.2,
                bottom: PreferredSize(
                    child: Container(
                      padding: EdgeInsets.only(left: 17,bottom: 7),
                      alignment: Alignment.centerLeft,
                      child: Text("Today,03 March 2020",
                        style: TextStyle(fontSize: 11,fontFamily: "Ebrima",fontWeight: FontWeight.w100,color: Color(0xff707070)),
                      ),
                    ),
                    preferredSize: null
                )
            ),
            preferredSize: Size.fromHeight(65.0), // here the desired height
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              const SizedBox(height: 15,),
              SizedBox(
                height: _screenSize.height/3.5,
                child: _getBestEvent(_screenSize),
              ),

              Container(
                padding: EdgeInsets.only(right: 10,left: 16),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Recommended',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontFamily: "Ebrima",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0,
                        )
                    ),

                    new Spacer(),

                    IconButton(
                        icon: Icon(Icons.more_horiz,color: Colors.black,size: 25),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecommendedAndMostLikePage(isRecommended: true,),
                            ),
                          );
                        }
                    )
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/4,
                child: _getRecommendedEvent(_screenSize),
              ),

              Container(
                padding: EdgeInsets.only(right: 10,left: 16),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('News',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Ebrima",
                          color: Colors.black,
                          fontSize: 16.0,
                        )
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/3.5,
                child: _getNews(_screenSize),
              ),

              Container(
                padding: EdgeInsets.only(right: 10,left: 16),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Most liked',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontFamily: "Ebrima",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0,
                        )
                    ),

                    new Spacer(),

                    IconButton(
                        icon: Icon(Icons.more_horiz,color: Colors.black,size: 25),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecommendedAndMostLikePage(isRecommended: false,),
                            ),
                          );
                        }
                    )
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/4,
                child: _getMostLikedEvent(_screenSize),
              ),

            ],
          ),
        ),
        onWillPop: (){}
    );
  }

}