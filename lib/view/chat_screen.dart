import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/model/contact_provider.dart';
import 'package:whatsapp/provider/whatsapp_provider.dart';

Whatsapp prof = Whatsapp();
Whatsapp prot = Whatsapp();

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  _Chat_ScreenState createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Whatsapp>(context, listen: false);
    prot = Provider.of<Whatsapp>(context, listen: true);

    return Scaffold(
      body: ListView.builder(
        // physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${prof!.Whatsapplist[index].name}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("${prof.Whatsapplist[index].photo}"),
              backgroundColor: Colors.black26,
              radius: 25,
            ),
            subtitle: Text(
              "${prof!.Whatsapplist[index].tagline}",
              style: TextStyle(color: Colors.black54),
            ),
            trailing: Text("${prof!.Whatsapplist[index].last}",style: TextStyle(color: Colors.black45),),
          );
        },
        itemCount: prof.Whatsapplist.length,
      ),
    );
  }
//
// Widget Whatsapptile(int index) {
//   return
// }
}
