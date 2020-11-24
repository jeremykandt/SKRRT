import 'dart:async';
import 'package:skrrt_app/admin_page.dart';

import 'sign_in.dart';
import 'package:flutter/material.dart';

class SuccessfulRide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SuccessfulRidePage();
  }
}
class SuccessfulRidePage extends State<SuccessfulRide>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SignIn()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromARGB(255, 0x00, 0xA8, 0xE5),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/skrrt_logo.png"),
                      height: 140,
                      width:140,
                    ),
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 1,
                    )
                  ]
              ),
            )
        )
    );
  }
}