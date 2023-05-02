import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/whatsapp_provider.dart';
Whatsapp prof = Whatsapp();
Whatsapp prot = Whatsapp();

class Call_Screen extends StatefulWidget {
  const Call_Screen({Key? key}) : super(key: key);

  @override
  _Call_ScreenState createState() => _Call_ScreenState();
}

class _Call_ScreenState extends State<Call_Screen> {
  @override
  Widget build(BuildContext context) {
    prof = Provider.of<Whatsapp>(context, listen: false);
    prot = Provider.of<Whatsapp>(context, listen: true);
    return Scaffold(
      body:Column(
        children: [
          ListTile(
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/Images/link2.png",),
              backgroundColor: Color(0xff075952),
              radius: 25,

            ),
            subtitle: Text(
              "Share a link for your Whatsapp call",
              style: TextStyle(color: Colors.black38),
            ),
          ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Recent ",style: TextStyle(color: Colors.black54),)),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              // physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "${prof!.Whatsappcall[index].name}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("${prof.Whatsappcall[index].photo}"),
                    backgroundColor: Colors.black26,
                    radius: 25,

                  ),
                  subtitle: Text("${prof!.Whatsappcall[index].last}"),
                  trailing: Icon(Icons.call,color: Colors.green,)
                );
              },
              itemCount: prof.Whatsappstatus.length,
            ),
          ),

        ],
      )

    );
  }
}
