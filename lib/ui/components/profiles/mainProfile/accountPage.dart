
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> with SingleTickerProviderStateMixin {

  ScrollController _scrollController;
  final GlobalKey<FormState> _accountFormKey = GlobalKey<FormState>();
  var _nameController = TextEditingController();
  var _userNameController = TextEditingController();
  var _dateOfBirthController = TextEditingController();
  var _phoneController = TextEditingController();
  var _emailController = TextEditingController();
  var _locationController = TextEditingController();

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
      backgroundColor: Colors.white,
      extendBody: true,
      body: Builder(
        builder: (context) =>Form(
          key: _accountFormKey,
          autovalidate: false,
          child: ListView(
            padding: EdgeInsets.only(bottom: 15,top: 30,left: 10,right: 10),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: _scrollController,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 16,),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),

                  const SizedBox(width: 4),

                  Text("Account",
                    style: TextStyle(
                      fontFamily: "Ebrima bold",
                      color: Color(0xff707070),
                      fontSize: 18
                    ),
                  )
                ],
              ),

              const SizedBox(height: 17,),

              Row(
                children:<Widget>[
                  const SizedBox(width: 50,),
                  Text("Personal",
                    style: TextStyle(
                        color: Color(0xff707070).withOpacity(0.6),
                        fontFamily: "Ebrima bold",
                        fontSize: 15
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12,),

              Container(
                margin: EdgeInsets.only(left: 17.0, right: 17.0),
                padding: EdgeInsets.only(top: _screenSize.height / 20,
                    left: _screenSize.width / 15,
                    right: _screenSize.width / 15,
                    bottom: _screenSize.height / 20),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xff707070),
                      width: 0.5
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Name ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Your name",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                    const SizedBox(height: 10,),

                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Username ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _userNameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Arthur Dodo",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                    const SizedBox(height: 10,),

                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Date of Birth / Date of creation ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _dateOfBirthController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "13 November 1957",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                  ],
                ),
              ),


              const SizedBox(height: 35,),

              Row(
                children:<Widget>[
                  const SizedBox(width: 50,),
                  Text("Contacts",
                    style: TextStyle(
                        color: Color(0xff707070).withOpacity(0.6),
                        fontFamily: "Ebrima bold",
                        fontSize: 15
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12,),

              Container(
                margin: EdgeInsets.only(left: 17.0, right: 17.0),
                padding: EdgeInsets.only(top: _screenSize.height / 20,
                    left: _screenSize.width / 15,
                    right: _screenSize.width / 15,
                    bottom: _screenSize.height / 20),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xff707070),
                      width: 0.5
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Phone ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "04-001-345-943",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                    const SizedBox(height: 10,),

                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Email ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Amio928@gmail.com",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                    const SizedBox(height: 10,),

                    new Container(
                        width: _screenSize.width/1.15,
                        padding: EdgeInsets.only(left: 8,right: 6.5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Location",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:"Ebrima bold"
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 7,left: 5),
                      height: 35,
                      child: TextFormField(
                        controller: _locationController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Cameroon, Yaounde rond304",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'CameronSans',
                                fontStyle: FontStyle.normal
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xff707070),
                                    width: 0.25
                                ),
                                borderRadius: BorderRadius.circular(5.0)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff707070),
                                  width: 0.25
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: null
                        ),
                        validator: (String value) {
                          if(value.isEmpty) {
                            return "Ce champ est requis";
                          }
                        },
                      ),
                    ),

                  ],
                ),
              ),

              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(left: 17.0, right: 17.0,top: 30),
                  height: 35,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(
                          color: Color(0xffE33838),
                          width: 0.5
                      )
                  ),
                  alignment: Alignment.center,
                  child: Text('Save',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffE33838),
                        fontFamily: "CameronSans",
                        fontSize: 12.0,
                      )
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          )
        )
      ),
    );
  }

}
