import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:postvent/ui/utilities/photoView.dart';


class DetailPage extends StatefulWidget{
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Size _screenSize = MediaQuery.of(context).size;

    return WillPopScope(
        child: Scaffold(
          body: ListView(
            padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 10),
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(height: 25),

              /*Header*/
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new IconButton(
                          icon: Icon(Icons.chevron_left, color: Color(0xff707070), size: 28),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }
                      ),

                      SizedBox(width: _screenSize.width / 1.5),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        width: 35,
                        height: 35,
                        child: IconButton(
                          icon: Icon(FontAwesome.bell_o,color: Color(0xff707070),size: 18,),
                          onPressed: () {

                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Festy Father Day",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff707070),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "CameronSans"
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("UK,London",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: "CameronSans"
                        ),
                      )
                    ],
                  ),
                ],
              ),
              /*End of header*/

              const SizedBox(height: 15),

              /*Image slider Box*/
              Container(
                margin: EdgeInsets.only(left: 13, right: 13, top: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffd4d4d4),
                          blurRadius: 10.0, // has the effect of softening the shadow
                          offset: Offset(0, 4)
                      )
                    ]
                ),
                width: _screenSize.width,
                height: _screenSize.height / 1.8,
                child: new Swiper(
                  itemWidth: _screenSize.width ,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                              width: _screenSize.width,
                              height: _screenSize.height / 1.8,
                              imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT87iIqSSUomxZ8AHgxso6czIPsgKGQMvSpzlsW0cLadfIug3Nu",
                              fit: BoxFit.cover,
                              repeat: ImageRepeat.noRepeat,
                              placeholder: (context, url) =>
                                  SpinKitFadingCircle(color: Color(0xff707070), size: 50),
                              errorWidget: (context, url, error) =>
                              new Icon(Icons.error, color: Color(0xffE33838), size: 35)
                          )
                      ),
                      onTap: () {
                        photoView(context, "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT87iIqSSUomxZ8AHgxso6czIPsgKGQMvSpzlsW0cLadfIug3Nu");
                      },
                    );
                  },
                  itemCount: 2,
                  autoplay: false,
                  outer: false,
                  pagination: new SwiperPagination(margin: EdgeInsets.all(0),),
                  control: new SwiperControl(
                    padding: EdgeInsets.all(0),
                    color: Colors.black,
                    size: 0,
                    iconPrevious: null,
                    iconNext: null,
                  ),
                ),
              ),
              /*End of Image slider Box*/

              const SizedBox(height: 35),

              /*Event Date and hour*/
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 7),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Thursday,07 May 2020",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: "CameronSans"
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("08:00 PM",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "CameronSans"
                        ),
                      )
                    ],
                  ),
                ],
              ),
              /*End of Event date and hour*/

              const SizedBox(height: 30),

              /*Event Poster info*/
              Container(
                  margin: EdgeInsets.only(left: 13, right: 13, top: 2,bottom: 5),
                  width: _screenSize.width,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:GestureDetector(
                            onTap: () {
                              photoView(context, "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT87iIqSSUomxZ8AHgxso6czIPsgKGQMvSpzlsW0cLadfIug3Nu");
                            },
                            child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT87iIqSSUomxZ8AHgxso6czIPsgKGQMvSpzlsW0cLadfIug3Nu",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50
                                ),
                              ),
                      ),

                      const SizedBox(width: 12,),

                      Container(
                        padding: EdgeInsets.only(top: 5,right: 77),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            Text("Lyne Melingui",
                              style: TextStyle(
                                  color: Color(0xff707070),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: "CameronSans"
                              ),
                            ),

                            const SizedBox(height: 5,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Icon(Icons.gps_fixed,color: Color(0xff707070),size: 15,),

                                const SizedBox(width: 3,),

                                Text("Yaoundé,Cameroun",
                                  style: TextStyle(
                                      color: Color(0xff707070),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      fontFamily: "CameronSans"
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            icon: Icon(Icons.more_horiz,color: Color(0xff707070),size: 25),
                            onPressed: null
                        ),
                      )

                    ],
                  )
              ),
              /*End of Event poster info*/

              /*Event description*/
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Une équipe peut être définie comme étant un groupe de personnes interagissant afin de se donner ou d'accomplir un objectif commun, lequel implique une répartition de tâches et la convergence des efforts des membres de l'équipe. Une équipe peut être définie comme étant un groupe de personnes interagissant afin de se donner ou d'accomplir un objectif.",
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              fontFamily: "CameronSans"
                          ),
                          textAlign: TextAlign.justify,
                        )
                    ),
                  ],
                )
              ),
              /*End Event description*/

              /*Average expense*/
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text("Average expenses",
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "CameronSans"
                      ),
                    ),

                    const SizedBox(height: 8,),

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 35,
                          width: _screenSize.width/2.65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xff707070)),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(AntDesign.man,color: Color(0xff707070),size: 15,),

                              const SizedBox(width: 20,),

                              Text('16.000 Fcfa',
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff707070),
                                    fontFamily: "CameronSans",
                                    fontSize: 14.0,
                                  )
                              ),
                            ],
                          )
                        ),

                        const SizedBox(width: 5,),

                        Container(
                            height: 35,
                            width: _screenSize.width/2.65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xff707070)),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(AntDesign.woman,color: Color(0xff707070),size: 15,),

                                const SizedBox(width: 20,),

                                Text('16.000 Fcfa',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff707070),
                                      fontFamily: "CameronSans",
                                      fontSize: 14.0,
                                    )
                                ),
                              ],
                            )
                        )
                      ],
                    ),

                    const SizedBox(height: 25,),

                    new Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Color(0xffE33838)),
                              color: Colors.white
                          ),
                          child: IconButton(
                            icon: Icon(FontAwesome.heart_o, color: Color(0xffE33838),),
                            onPressed: null,
                            iconSize: 15,
                          ),
                        ),

                        const SizedBox(width: 20,),

                        Container(
                          height: 35,
                          width: _screenSize.width/1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffE33838)
                          ),
                          alignment: Alignment.center,
                          child: Text('Comment',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "CameronSans",
                                fontSize: 13.0,
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )


           ],
          ),
        ),
        onWillPop: () {
          Navigator.of(context).pop();
        }
    );
  }

}