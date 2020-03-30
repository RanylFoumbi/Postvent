import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


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
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                    image: AssetImage("asset/images/image0.jpg"),
                  /*image: new NetworkImage("https//."),*/
                    fit: BoxFit.cover
                  )
                ),
                width: screenSize.width/1.1,
                height: screenSize.height/3,
                  padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                  child: new Stack(
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
                                  fontSize: 15.0,
                                )
                            ),
                           const SizedBox(height: 5,),
                            new Text('Tuesday, 31 March 2020',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                )
                            ),
                          ],
                        )
                      ),
                      new Positioned(
                        right: 0.0,
                        bottom: 5.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                icon: Icon(FontAwesome.heart_o, color: Color(0xffE33838),),
                                onPressed: null,
                                iconSize: 15,
                              ),
                            ),

                            const SizedBox(width: 5,),

                            Container(
                              height: 30,
                              width: 100,
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
                                    fontSize: 13.0,
                                  )
                              ),
                            )
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
              margin: EdgeInsets.only(right: 10,left: 16,top: 5,bottom: 5),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(width: 0,style: BorderStyle.none),
              ),
              child: Container(
                  width: screenSize.width/2.4,
                  height: screenSize.height/3.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                          image: AssetImage("asset/images/image2.jpg"),
                          /*image: new NetworkImage("https//."),*/
                          fit: BoxFit.cover
                      )
                  ),
                  padding: new EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
                  child: new Stack(
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5,
                                  )
                              ),
                              const SizedBox(height: 5,),
                              new Text('Tuesday, 31 March 2020',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  )
                              ),
                            ],
                          )
                      ),
                      new Positioned(
                        right: 0.0,
                        bottom: 5.0,
                        child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                  icon: Icon(FontAwesome.heart_o, color: Color(0xffE33838),),
                                  onPressed: null,
                                  iconSize: 10,
                              ),
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
        margin: EdgeInsets.only(right: 16,left: 16,top: 5,bottom: 5),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(width: 0,style: BorderStyle.none),
        ),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                    image: AssetImage("asset/images/image0.jpg"),
                    /*image: new NetworkImage("https//."),*/
                    fit: BoxFit.cover
                )
            ),
            width: screenSize.width/1.1,
            height: screenSize.height/3,
            padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
            child: new Stack(
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
                              fontSize: 15.0,
                            )
                        ),
                        const SizedBox(height: 5,),
                        new Text('Tuesday, 31 March 2020',
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,
                            )
                        ),
                      ],
                    )
                ),
                new Positioned(
                  right: 0.0,
                  bottom: 5.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                        ),
                        child: IconButton(
                          icon: Icon(FontAwesome.heart_o, color: Color(0xffE33838),),
                          onPressed: null,
                          iconSize: 15,
                        ),
                      ),

                      const SizedBox(width: 5,),

                      Container(
                        height: 30,
                        width: 100,
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
                              fontSize: 13.0,
                            )
                        ),
                      )
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
              margin: EdgeInsets.only(right: 10,left: 16,top: 5,bottom: 5),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(width: 0,style: BorderStyle.none),
              ),
              child: Container(
                  width: screenSize.width/2.4,
                  height: screenSize.height/3.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                          image: AssetImage("asset/images/image2.jpg"),
                          /*image: new NetworkImage("https//."),*/
                          fit: BoxFit.cover
                      )
                  ),
                  padding: new EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
                  child: new Stack(
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5,
                                  )
                              ),
                              const SizedBox(height: 5,),
                              new Text('Tuesday, 31 March 2020',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  )
                              ),
                            ],
                          )
                      ),
                      new Positioned(
                        right: 0.0,
                        bottom: 5.0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: IconButton(
                            icon: Icon(FontAwesome.heart_o, color: Color(0xffE33838),),
                            onPressed: null,
                            iconSize: 10,
                          ),
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
          appBar: PreferredSize(
            child:AppBar(
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Postvent",
                            style: TextStyle(fontSize: 30,fontFamily: "CameronSans",fontWeight: FontWeight.w300,color: Color(0xff707070)),
                          ),

                          SizedBox(width: _screenSize.width/3.0,),

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
                elevation: 0.2,
                bottom: PreferredSize(
                    child: Container(
                      padding: EdgeInsets.only(left: 17,bottom: 7),
                      alignment: Alignment.centerLeft,
                      child: Text("Today,03 March 2020",
                        style: TextStyle(fontSize: 13,fontFamily: "Ebrima",fontWeight: FontWeight.w400,color: Color(0xff707070)),
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
              SizedBox(
                height: _screenSize.height/3,
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
                          fontWeight: FontWeight.w400,
                          color: Color(0xff707070),
                          fontSize: 20.0,
                        )
                    ),

                    IconButton(
                        icon: Icon(Icons.more_horiz,color: Color(0xff707070),size: 30),
                        onPressed: null
                    )
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/3.7,
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
                          fontWeight: FontWeight.w400,
                          color: Color(0xff707070),
                          fontSize: 20.0,
                        )
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/3,
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
                          fontWeight: FontWeight.w400,
                          color: Color(0xff707070),
                          fontSize: 20.0,
                        )
                    ),

                    IconButton(
                        icon: Icon(Icons.more_horiz,color: Color(0xff707070),size: 30),
                        onPressed: null
                    )
                  ],
                ),
              ),

              SizedBox(
                height: _screenSize.height/3.7,
                child: _getMostLikedEvent(_screenSize),
              ),

            ],
          ),
        ),
        onWillPop: (){}
    );
  }

}