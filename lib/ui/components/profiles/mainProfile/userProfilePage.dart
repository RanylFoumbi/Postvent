import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userProfilePage extends StatefulWidget {
  @override
  _userProfilePageState createState() => _userProfilePageState();
}


class _userProfilePageState extends State<userProfilePage> {

  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size _screenSize = MediaQuery.of(context).size;

    Widget image = Container(
        height: _screenSize.height/2.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(34), bottomRight: Radius.circular(27)),
          image: DecorationImage(
              image: AssetImage("asset/images/ciel.jpg"),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.overlay)
          ),
        ),
        child: new Stack(
          children: <Widget>[

            /*Container overlay on convert image*/
            Container(
              height: _screenSize.height/2.3,
              padding: EdgeInsets.only(top: 12, left: 24, right: 24, ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(34), bottomRight: Radius.circular(27)),
                  gradient: LinearGradient(
                    colors: [Colors.black54, Colors.black.withOpacity(0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )
              ),)

          ],
        )
    );

    Widget navigationBar = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            'Profile',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontFamily: 'Ebrima Bold',
              fontWeight: FontWeight.bold,
            ),
          ),

          new Icon(Icons.edit, color: Colors.white, size: 25,),

        ],
      ),
    );

    Widget profileDetails = Container(
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        children: <Widget>[
          // profile picture
          Container(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: new BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: AssetImage('asset/images/peroquet.jpg'),
                        fit: BoxFit.fill,
                      )
                  ),
                ),

                Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: Icon(Icons.camera_alt, color: Colors.black, size: 12,)
                )

              ],
            ),
          ),

          // Profile name
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Ange Betchom',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'EbrimaBold'
              ),
            ),
          ),

          // Profile description
          Container(
              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0),
              child: Text(
                  "In order to measure a person’s worth, you must do more than push them. "
                      "The real way to test their worth is to give them power. "
                      "When they gain the freedom to act outside the boundaries of law and ethics, "
                      "you can sometimes see their souls. When the weak become strong... "
                      "When good citizens become free to engage in violence... "
                      "I'm interested to see what is the outcome of that.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 9,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontFamily: 'Ebrima',
                  )
              )
          )
        ],
      ),
    );

    Widget accountInteractionDetails = Container(
      margin: EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey[300],
            offset: new Offset(0.0, 0.0),
            blurRadius: 2.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(

            child: Interaction('13', 'Posts'),
          ),

          Container(
            child: Interaction('1k9', 'Followers'),
          ),

          Container(
            child: Interaction('3k', 'Following'),
          ),

        ],
      ),
    );

    Widget settings = Container(
      margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: _screenSize.height/7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[300],
                  offset: new Offset(0.0, 0.0),
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed("/account");
                  },
                  child: SettingDetails(Icons.person_outline, Icons.arrow_forward_ios, 'Account'),
                ),


                SettingDetails(Icons.chat_bubble_outline, Icons.arrow_forward_ios, 'Language'),

                /*ExpansionTile(
                  title: SettingDetails(Icons.chat_bubble_outline, Icons.arrow_forward_ios, 'Language'),
                  initiallyExpanded: false,
                  backgroundColor: Colors.white10,
                  children: <Widget>[
                    Text(
                      "French",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black.withOpacity(0.8),
                        fontFamily: 'EbrimaBold',
                      ),
                    ),

                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black.withOpacity(0.8),
                        fontFamily: 'EbrimaBold',
                      ),
                    ),
                  ],
                )*/
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[300],
                  offset: new Offset(0.0, 0.0),
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                SettingDetails(Icons.notifications_none, Icons.arrow_forward_ios, 'Notification'),
                SettingDetails(Icons.color_lens, Icons.arrow_forward_ios, 'Theme'),
                SettingDetails(Icons.person_outline, Icons.arrow_forward_ios, 'About Us'),
              ],
            ),
          ),


        ],
      ),
    );

    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                image,
                    Container(
                      padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 20.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 22),
                          navigationBar,
                          profileDetails,
                          accountInteractionDetails,
                          settings,
                        ],
                      ),
                    )
              ],
            ),
          )
        ],
      ),
    );
  }

}

class Interaction extends StatelessWidget {

  final String quantity;
  final String label;
  const Interaction(this.quantity, this.label);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              quantity,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'EbrimaBold',
              ),
            ),

          Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Ebrima',
              )
            )
        ],
        ),
    );

  }

}

class SettingDetails extends StatelessWidget {

  final IconData firstIconName;
  final IconData secondIconName;
  final String label;
  const SettingDetails(this.firstIconName, this.secondIconName, this.label);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
            child: Icon(firstIconName, size: 18, color: Color(0xff707070),),
          ),

          Expanded(
            child: Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.black.withOpacity(0.7),
                  fontFamily: 'Ebrima Bold',
                )
            ),
          ),

          Icon(secondIconName, size: 15, color: Colors.black.withOpacity(0.7),)
        ],
      ),
    );

  }

}