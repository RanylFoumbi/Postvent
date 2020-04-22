import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class InterestingEvent extends StatefulWidget{

  @override
  _InterestingEventState createState() => _InterestingEventState();
}

class _InterestingEventState extends State<InterestingEvent>{

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
                        Text("Interested",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28,
                              fontFamily: "Ebrima",
                              fontWeight: FontWeight.w200,
                              color: Color(0xff707070)
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
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          width: 8,
                          height: 8,
                        ),

                        const SizedBox(width: 4,),

                        Container(
                          margin: EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                              color: Colors.black87,
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
          backgroundColor:  Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
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
                      margin: EdgeInsets.only(right: 15,left: 17,top: 5,bottom: 5),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(width: 0,style: BorderStyle.none),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                                  image: AssetImage("asset/images/image0.jpg"),
                                  /*image: new NetworkImage("https//."),*/
                                  fit: BoxFit.cover
                              )
                          ),
                          width: _screenSize.width/1.3,
                          height: _screenSize.height/3.5,
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
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Ebrima bold",
                                            fontSize: 9.0,
                                          )
                                      ),
                                      const SizedBox(height: 3,),
                                      new Text('Tuesday, 31 March 2020',
                                          style: new TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Ebrima",
                                            fontSize: 7.0,
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
                          )
                      ),
                    ),
                  );
                }
            ),
          )
        ),
        onWillPop: (){}
    );
  }


  @override
  void dispose() {
    super.dispose();
  }

}