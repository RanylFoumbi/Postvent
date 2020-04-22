import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  const Loader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: SpinKitDoubleBounce(
          color: Color(0xffE33838),
          size: 80.0,
        ),
    );
  }
}