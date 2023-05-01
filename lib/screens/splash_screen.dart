import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we_chat/screens/auth/login_screen.dart';
import 'package:we_chat/screens/home_screen.dart';

import '../../main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  // bool _isAnimate = false;
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000),(){
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      }));
    });
  }



  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to We Chat'),
      ),

      body: Stack(
        children: [
          Positioned(
              top: mq.height * .15,
              right:  mq.width * .25,
              width: mq.width * .5,
              // left : mq.width *.35,
              child: Image(image: AssetImage('../images/rating.png'),)),
          Positioned(
            bottom: mq.height * .15,
            width: mq.width * .9,
            child: const Text('Made In India with Love ❤',style: TextStyle(fontSize: 16.0,color: Colors.black87,letterSpacing: .5),
            textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
