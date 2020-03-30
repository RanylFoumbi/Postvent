import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FavoriteEvent extends StatefulWidget{

  @override
  _FavoriteEventState createState() => _FavoriteEventState();
}

class _FavoriteEventState extends State<FavoriteEvent>{

  ScrollController _scrollController;


  @override
  void initState() {
    _scrollController = new ScrollController();
    super.initState();
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
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Favorites",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,fontFamily: "CameronSans",fontWeight: FontWeight.w300,color: Color(0xff707070)),
                      ),

                      SizedBox(width: _screenSize.width/2.0,),

                      IconButton(
                        icon: Icon(AntDesign.search1,color: Color(0xff707070),size: 20,),
                        onPressed: () {
                        },
                      ),

                    ],
                  )
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
            ),
            preferredSize: Size.fromHeight(60.0), // here the desired height
          ),
          extendBody: true,
          body: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/details");
                  },
                  child: Card(
                    margin: EdgeInsets.only(right: 15,left: 15,top: 7,bottom: 5),
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
                        width: _screenSize.width/1.1,
                        height: _screenSize.height/3,
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
          ),
        ),
        onWillPop: (){}
    );
  }


  @override
  void dispose() {
    super.dispose();
  }

}