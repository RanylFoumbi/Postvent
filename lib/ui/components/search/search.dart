import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class SearchPage extends StatefulWidget{

  _SearchPageState createState()=> _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{

  ScrollController _scrollController;
  List _finalResult = [1,1,1,1,1,1,1,1,1];

  @override
  void initState() {
    _scrollController = new ScrollController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size _screenSize = MediaQuery.of(context).size;


    Widget _buildResultList(BuildContext context, int index) {

      return Container(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed("/details");
          },
          child: Card(
            margin: EdgeInsets.only(right: 10,left: 10,top: 7,bottom: 5),
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
                width: _screenSize.width/1,
                height: _screenSize.height/3.5,
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
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      body: Container(
        padding: EdgeInsets.all(12),
        child: new Column(
            children: <Widget>[
              const SizedBox(height: 25,),
              new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  onChanged: (query){
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.arrow_back,color: Color(0xff707070),size: 20,),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      contentPadding: EdgeInsets.only(left: 25),
                      hintText: 'Douala',
                      hintStyle: TextStyle(fontStyle: FontStyle.normal),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                ),
              ),

              const SizedBox(height: 15,),

              new Expanded(
                child: new Center(
                     child: new  ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              controller: _scrollController,
                              scrollDirection: Axis.vertical,
                              itemBuilder: _buildResultList,
                              itemCount: _finalResult.length,
                          ),
                ),
              )
            ]
        ),
      )
    );
  }


  @override
  void dispose() {
    super.dispose();
  }
}