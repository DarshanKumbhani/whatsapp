import 'package:flutter/cupertino.dart';

import '../model/contact_provider.dart';

class Whatsapp extends ChangeNotifier {
  List<Contact> Whatsapplist = [
    Contact(
        name: "Darshan",
        tagline: "Always Be Happy",
        last: "12:34 pm",
        photo: "assets/Images/sankhat.jpg"),
    Contact(
        name: "Vivek",
        tagline: "Vivek 9106619178",
        last: "1:56 pm",
        photo: "assets/Images/vivek.png"),
    Contact(
        name: "Dixit",
        tagline: "Photo",
        last: "10:02 pm",
        photo: "assets/Images/dixit.jpeg"),
    Contact(
      name: "Krunal",
      tagline: "KRUNAL GOHIL",
      last: "3:45 pm",
      photo: "assets/Images/krunal.jpeg",
    ),
    Contact(
        name: "Yash",
        tagline: "▶ Missed Video call",
        last: "8:30 am",
        photo: "assets/Images/yash.jpeg"),
    Contact(
        name: "Bhargav",
        tagline: "Hey There 'M Using Whatsapp",
        last: "4:23 am",
        photo: "assets/Images/bhargav.jpeg"),
    Contact(
        name: "Bhavin",
        tagline: "Reacted 👍 ",
        last: "2:22 am",
        photo: "assets/Images/bhavin.jpeg"),
    Contact(
        name: "Kaushik",
        tagline: "Hey There I'M Using Whatsapp",
        last: "7:37 am",
        photo: "assets/Images/kaushik.jpeg"),
    Contact(
        name: "Smit",
        tagline: "सत्य,प्रेम करुणा",
        last: "12:56 am",
        photo: "assets/Images/smit.jpeg"),
    Contact(
        name: "Nirav",
        tagline: "🤏राम",
        last: "3:00 am",
        photo: "assets/Images/nirav.jpeg"),
    Contact(
        name: "Manthan",
        tagline: "બાપુ નો એકજ પેટન સવાલ",
        last: "5:12 am",
        photo: "assets/Images/manthan.jpeg"),
  ];

  List<Contact> Whatsappstatus = [
    Contact(
      name: "Manthan",
      last: "5 minutes ago",
      photo: "assets/Images/manthan_s.jpeg",
    ),
    Contact(
      name: "Kaushik",
      last: "Today,2:31 PM",
      photo: "assets/Images/kaushik_s.jpeg",
    ),
    Contact(
      name: "Vivek",
      last: "11 minutes ago",
      photo: "assets/Images/vivek_p.png",
    ),
    Contact(
      name: "darshan",
      last: "Tommorow,3:31 AM",
      photo: "assets/Images/darshan_p.jpeg",
    ),
    Contact(
      name: "prince",
      last: "Today,2:56 PM",
      photo: "assets/Images/prince_p.jpeg",
    ),
    Contact(
      name: "Yash",
      last: "56 minutes ago",
      photo: "assets/Images/yash_p.jpeg",
    ),
  ];

  List<Contact> Whatsappcall = [
    Contact(
        name: "Kaushik",
        photo: "assets/Images/kaushik.jpeg",
        last: "↙ Yesterday,8:10 PM",
        tagline: "🤙"),
    Contact(
        name: "Manthan",
        photo: "assets/Images/manthan.jpeg",
        last: "↗ Yesterday,8:10 PM",
        tagline: "📹"),
    Contact(
        name: "+91 45 675 3425",
        photo: "assets/Images/manthan.jpeg",
        last: "↗ Yesterday,8:10 PM",
        tagline: "📹"),
    Contact(
      name: "Manthan",
      photo: "assets/Images/manthan.jpeg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "🤙",
    ),
    Contact(
      name: "Vivek",
      photo: "assets/Images/vivek.png",
      last: "↗ Yesterday,8:10 PM",
      tagline: "📹",
    ),
    Contact(
      name: "Yash",
      photo: "assets/Images/yash.jpeg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "🤙",
    ),
    Contact(
      name: "Manthan",
      photo: "assets/Images/sankhat.jpg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "🤙",
    ),
    Contact(
      name: "Sankhat",
      photo: "assets/Images/sankhat.jpg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "🤙",
    ),
    Contact(
      name: "Dixit",
      photo: "assets/Images/dixit.jpeg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "📹",
    ),
    Contact(
      name: "kaushik",
      photo: "assets/Images/kaushik.jpeg",
      last: "↗ Yesterday,8:10 PM",
      tagline: "🤙",
    ),
  ];
}
