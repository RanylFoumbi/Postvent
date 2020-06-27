import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:postvent/ui/utilities/photoView.dart';

class FollowingEvent extends StatefulWidget{

  @override
  _FollowingEventState createState() => _FollowingEventState();
}

class _FollowingEventState extends State<FollowingEvent>{

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
                  padding: EdgeInsets.only(top: 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Following",
                            textAlign: TextAlign.center,
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
                      ),

                      Row(
                        children: <Widget>[
                          const SizedBox(width: 3,),

                          Container(
                            margin: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            width: 8,
                            height: 8,
                          ),

                         const SizedBox(width: 4,),

                          Container(
                            margin: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            width: 8,
                            height: 8,
                          ),
                        ],
                      )
                    ],
                  ),
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
            ),
            preferredSize: Size.fromHeight(80.0), // here the desired height
          ),
          extendBody: true,
          backgroundColor: Colors.white,
          body: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/details");
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10,bottom: 5),
                    padding: EdgeInsets.only(right: 15,left: 0),
                    width: _screenSize.width,
                    child: Column(
                      children: <Widget>[

                        new Row(
                          children: <Widget>[

                            Container(
                              margin: EdgeInsets.only(left: 18),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: index %2 == 0 ? Colors.grey.withOpacity(0.35) : Color(0xffE33838),
                                  width: 1.0
                                ),
                                borderRadius: BorderRadius.circular(100)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child:GestureDetector(
                                  onTap: () {
                                    photoView(context, "asset/images/transporteur.png");
                                  },
                                  child: Image.asset(
                                      "asset/images/transporteur.png",
                                      fit: BoxFit.cover,
                                      height: 35,
                                      width: 35
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 12,),

                            Container(
                              padding: EdgeInsets.only(top: 0,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Text("Lyne Melingui",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11,
                                        fontFamily: "Ebrima bold",
                                    ),
                                  ),

                                  const SizedBox(height: 5,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[

                                      Icon(Icons.gps_fixed,color: Color(0xff707070),size: 9,),

                                      const SizedBox(width: 2,),

                                      Text("Yaoundé,Cameroun",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 9,
                                          fontFamily: "Ebrima",
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),
                            ),

                            new Spacer(),

                            GestureDetector(
                              onTap: (){

                              },
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child:  Container(
                                    height: 20,
                                    width: _screenSize.width/4.4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: index %2 == 0 ? Colors.white : Color(0xffE33838),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Color(0xffE33838),
                                        )
                                    ),
                                    alignment: Alignment.center,
                                    child: index %2 == 0 ?
                                                          Text('Following',
                                                              textAlign: TextAlign.center,
                                                              style: new TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                color:  Color(0xffE33838),
                                                                fontFamily: "Ebrima",
                                                                fontSize: 7.0,
                                                              )
                                                          )
                                                         :
                                                            Text('Follow',
                                                                textAlign: TextAlign.center,
                                                                style: new TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  color:  Colors.white,
                                                                  fontFamily: "Ebrima",
                                                                  fontSize: 7.0,
                                                                )
                                                            ),
                                  )
                              ),
                            )

                          ],
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 7),
                          height: _screenSize.height/4.2,
                          width: _screenSize.width,
                          child: ListView.builder(
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
                                        width: _screenSize.width/2.3,
                                        height: _screenSize.height/4,
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
                                              width: _screenSize.width/2.3,
                                              height: _screenSize.height/4,
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
                          ),
                        ),
                      ],
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