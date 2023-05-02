import 'package:flutter/material.dart';
import 'package:whatsapp/view/call_screen.dart';
import 'package:whatsapp/view/chat_screen.dart';
import 'package:whatsapp/view/status_screen.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075952),
            title:Text("Whatsapp",style: TextStyle(fontSize: 20),),
            actions: [

              Icon(Icons.search),
              SizedBox(width: 10,),

              Icon(Icons.more_vert),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Chat",),
                Tab(text: "Status",),
                Tab(text: "Call",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Chat_Screen(),
              Status_Screen(),
              Call_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
