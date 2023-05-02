import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/whatsapp_provider.dart';

Whatsapp prof = Whatsapp();
Whatsapp prot = Whatsapp();

class Status_Screen extends StatefulWidget {
  const Status_Screen({Key? key}) : super(key: key);

  @override
  _Status_ScreenState createState() => _Status_ScreenState();
}

class _Status_ScreenState extends State<Status_Screen> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Whatsapp>(context, listen: false);
    prot = Provider.of<Whatsapp>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              "My Status",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/Images/myprofile.jpg"),
              radius: 25,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 25),
                child: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
              ),
            ),
            subtitle: Text(
              "Tap to add status update",
              style: TextStyle(color: Colors.black38),
            ),
          ),
          SizedBox(height: 6,),
          Align(
            alignment: Alignment.topLeft,
              child: Text("Recent Updates",style: TextStyle(color: Colors.black54),)),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              // physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "${prof!.Whatsappstatus[index].name}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Container(
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff075952,),width: 2)
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("${prof.Whatsappstatus[index].photo}"),
                      backgroundColor: Colors.black26,
                      radius: 25,

                    ),
                  ),
                  subtitle: Text("${prof!.Whatsappstatus[index].last}"),
                );
              },
              itemCount: prof.Whatsappstatus.length,
            ),
          ),
        ],
      ),
    );
  }
}
