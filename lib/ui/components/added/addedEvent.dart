import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddedEvent extends StatefulWidget{
  @override
  _AddedEventState createState() => _AddedEventState();

}

class _AddedEventState extends State<AddedEvent> {

  ScrollController _scrollController;


  @override
  void initState() {
    _scrollController = new ScrollController();
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

    return Scaffold(
      /*Header*/
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              margin: EdgeInsets.only(top: 10),
              child: new Column(
                children: <Widget>[

                  new Row(
                    children: <Widget>[
                      SizedBox(width: _screenSize.width/60,),
                      new Text("Added",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: "Ebrima",
                            fontWeight: FontWeight.w200,
                            color: Color(0xff707070)
                        ),
                      ),

                      SizedBox(width: _screenSize.width/2.5,),

                      Container(
                          margin: EdgeInsets.only(top: 10,left: 5),
                          child:IconButton(
                            icon: Icon(AntDesign.search1,color: Color(0xff707070),size: 20,),
                            onPressed: () {
                              Navigator.of(context).pushNamed("/search");
                            },
                          )
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Color(0xffE33838),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        width: 32,
                        height: 32,
                        child: IconButton(
                          icon: Icon(FontAwesome.bell_o,color: Colors.white,size: 15,),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 7),

                ],
              ),
            ),
            bottom: PreferredSize(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: /* Add new Event Button*/

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 33,
                      margin: EdgeInsets.only(left: 5),
                      width: _screenSize.width/1.11,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffE33838),
                            width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xffE33838),
                      ),
                      child:  Row(
                        children: <Widget>[
                          const SizedBox(width: 15),
                          Icon(Icons.add,color: Colors.white, size: 18),
                          const SizedBox(width: 10),
                          new Text("Add New Event",
                            style: TextStyle(
                                fontSize: 11.5,
                                fontFamily: "Ebrima Bold",
                                fontWeight: FontWeight.w200,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                preferredSize: null
            ),
            elevation: 0.0,
          ),
          preferredSize: Size.fromHeight(_screenSize.height/6),
      ),
      /*End of header*/
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            padding: EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 10),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            controller: _scrollController,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return  Dismissible(
                  key: Key("key$index"),
                  direction: DismissDirection.endToStart,
                  confirmDismiss: (direction) async {
                      final bool res = await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text(
                                  "Are you sure you want to delete $index?"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                FlatButton(
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(color: Color(0xffE33838)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                      return res;
                  },
                  background: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        color: Color(0xffE33838),
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child:GestureDetector(
                    onTap: (){},
                    child: Container(
                        padding: EdgeInsets.only(top: 5,left: 5,right: 5,),
                        margin: EdgeInsets.only(top: 8,bottom: 2),
                        height: _screenSize.height/3.35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                            boxShadow: [
                              new BoxShadow(
                                color: Color(0xff707070).withOpacity(0.2),
                                offset: Offset(0, 2),
                              )
                            ]
                        ),
                        child: Column(
                                   children: <Widget>[
                                  new Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(22),
                                          image: DecorationImage(
                                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.overlay),
                                              image: AssetImage("asset/images/image0.jpg"),
                                              /*image: new NetworkImage("https//."),*/
                                              fit: BoxFit.cover
                                          )
                                      ),
                                      width: _screenSize.width/1.14,
                                      height: _screenSize.height/4.3,
                                      padding: new EdgeInsets.only(left: 14.0, bottom: 4.0, right: 14.0),
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

                                  const SizedBox(height: 8,),

                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[

                                      new Text("200 Likes",
                                        style: TextStyle(
                                            fontFamily: "Ebrima Bold",
                                            fontSize: 7.5,
                                            color: Color(0xff707070)
                                        ),
                                      ),


                                      new Text("200 Comments",
                                        style: TextStyle(
                                            fontFamily: "Ebrima Bold",
                                            fontSize: 7.5,
                                            color: Color(0xff707070)
                                        ),
                                      ),


                                      new Text("200 Shares",
                                        style: TextStyle(
                                            fontFamily: "Ebrima Bold",
                                            fontSize: 7.5,
                                            color: Color(0xff707070)
                                        ),
                                      ),

                                      GestureDetector(
                                        onTap: (){},
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(50),
                                              boxShadow: [
                                                new BoxShadow(
                                                  color: Color(0xff707070).withOpacity(0.2),
                                                  offset: Offset(0, 2),
                                                )
                                              ]
                                          ),
                                          child: Icon(Icons.share, color: Color(0xffE33838),size: 12,),
                                        ),
                                      )

                                    ],
                                  )
                                ],
                              )
                    ),
                  )
              );
            }
        ),
      )
    );
  }

}