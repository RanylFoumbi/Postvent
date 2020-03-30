


import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photo_view/photo_view.dart';


verifyImageSource(image){

  if(image.runtimeType == String) return true;
  else return false;
}

photoView(context,image){

  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: PhotoView(
            imageProvider: verifyImageSource(image)? NetworkImage(image):FileImage(image),
            loadingChild: SpinKitWave(color: Colors.deepPurple,size: 50),
          ),
        ),
        backgroundColor: Colors.black,
      );
    },
  );
}