
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RecommendedAndMostLikePage extends StatefulWidget{

  RecommendedAndMostLikePage({ this.isRecommended});
  final bool isRecommended;

  @override
  _RecommendedAndMostLikePageState createState() => _RecommendedAndMostLikePageState();

}

class _RecommendedAndMostLikePageState extends State<RecommendedAndMostLikePage>{


  ScrollController _scrollController;


  @override
  void initState() {
    _scrollController = new ScrollController();
    print(widget.isRecommended);
    super.initState();
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Size _screenSize = MediaQuery.of(context).size;


    Widget _buildResultList(BuildContext context, int index) {

      return GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed("/details");
        },
        child: Card(
          margin: EdgeInsets.only(right: 12.5,left: 12.5,top: 5,bottom: 8),
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
              width: _screenSize.width/1.1,
              height: _screenSize.height/3.5,
              child: new Stack(
                children: <Widget>[

                  Container(
                    width: _screenSize.width/1.1,
                    height: _screenSize.height/3.5,
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
                    ),
                  ),
                ],
              )
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 12,bottom: 15,left: 4,right: 4),
          child: new Column(
              children: <Widget>[
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 16,),
                        onPressed: (){
                             Navigator.of(context).pop();
                        }
                    ),

                    widget.isRecommended
                                        ?
                                          Text("Recommended",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Ebrima",
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black.withOpacity(0.7)
                                            ),
                                          )
                                        :
                                          Text("Most Like",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Ebrima",
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black.withOpacity(0.7)
                                            ),
                                          ),
                    new Spacer(),

                    IconButton(
                        icon: Icon(AntDesign.search1,color: Color(0xff707070),size: 18,),
                        onPressed: (){
                          Navigator.of(context).pushNamed("/search");
                        }
                    ),

                    const SizedBox(height: 20,),

                  ],
                ),

                new Expanded(
                  child: new Center(
                    child: new  ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      itemBuilder: _buildResultList,
                      itemCount: 8,
                    ),
                  ),
                )
              ]
          ),
        )
    );
  }

}