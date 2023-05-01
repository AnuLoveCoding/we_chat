import 'package:flutter/material.dart';
import 'package:we_chat/screens/home_screen.dart';

import '../../main.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(milliseconds: 500),(){
      setState(() {
        _isAnimate = true;
      });
    });
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    // intializing media Query (for getting device screen size);
    // mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to We Chat'),
      ),

      body: Stack(
        children: [
          AnimatedPositioned(
             top: mq.height * .15,
             right: _isAnimate ? mq.width * .25 : -mq.width * .5,
             width: mq.width * .5,
              duration: Duration(seconds: 1),
              // left : mq.width *.35,
              child: Image(image: AssetImage('../images/rating.png'),)),
          Positioned(
              bottom: mq.height * .15,
              width: mq.width * .9,
              left : mq.width * .05,
              height: mq.height * .06,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    shape: StadiumBorder(),
                    elevation: 1,
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return const HomeScreen();
                    }));
                  }, icon: Image(
                  image: AssetImage('../images/google.png'),height: mq.height * .03,),
                  label: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black,fontSize: 16.0),
                        children: [
                            TextSpan(text: 'Login with '),
                            TextSpan(text: 'Google',style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                    ),
                  )
              ),
          ),
        ],
      ),
    );
  }
}
