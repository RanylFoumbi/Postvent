
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
              const SizedBox(height: 25,),
              new Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xff707070).withOpacity(0.2),
                      offset: Offset(0, 2),
                    )
                  ]
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

              const SizedBox(height: 12,),

              new Expanded(
                child: new Container(
                  width: _screenSize.width,
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
    _scrollController.dispose();
    super.dispose();
  }
}