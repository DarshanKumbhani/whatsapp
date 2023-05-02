import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/model/contact_provider.dart';
import 'package:whatsapp/provider/whatsapp_provider.dart';
import 'package:whatsapp/view/call_screen.dart';
import 'package:whatsapp/view/chat_screen.dart';
import 'package:whatsapp/view/home_screen.dart';
import 'package:whatsapp/view/splash.dart';
import 'package:whatsapp/view/status_screen.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Whatsapp(),
          ),
        ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "spash",
      routes: {
        '/': (context) => Home_screen(),
        'spash':(context) => SplashScreen(),
        'status': (context) => Status_Screen(),
        'call': (context) => Call_Screen(),
        'chat': (context) => Chat_Screen(),
      },
    ),
  ));
}
