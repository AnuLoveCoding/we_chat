import 'package:flutter/material.dart';

import '../../main.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
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
            top: mq.height * .10,
            width: mq.width * .3,
              left : mq.width *.35,
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
                  onPressed: (){}, icon: Image(
                  image: AssetImage('../images/google.png'),height: mq.height * .03,),
                  label: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black,fontSize: 16.0),
                        children: [
                            TextSpan(text: 'Sign In with '),
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
