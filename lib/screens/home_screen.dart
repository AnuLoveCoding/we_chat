import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(CupertinoIcons.home,),
        title: const Text('We Chat'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),
        ],
      ),
      
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_comment_rounded),),
      ),
    );
  }
}
