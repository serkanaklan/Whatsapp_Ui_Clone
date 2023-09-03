import 'dart:math';

import 'package:flutter/material.dart';

import '../name/maleNames.dart';
import '../photo/photo.dart';

class calling extends StatefulWidget {
  const calling({super.key});

  @override
  State<calling> createState() => _callingState();
}

class _callingState extends State<calling> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        List<Icon> iconlar = [
          Icon(
            Icons.camera_alt_sharp,
            color: Colors.red,
          ),
          Icon(
            Icons.camera_alt_sharp,
            color: Colors.green,
          ),
          Icon(
            Icons.phone,
            color: Colors.green,
          ),
          Icon(
            Icons.phone,
            color: Colors.red,
          ),
        ];

        final minitu = Random().nextInt(59);
        // time
        final callTime = Random().nextInt(23);
        //minitu
        Widget zamanlayici() {
          print("callTime + minitu : ${callTime} ${minitu}");
          var sabah = 05;
          var oglen = 13;
          var aksam = 18;
          if (callTime < sabah) {
            return Text("Sizi Gece ${callTime}:${minitu} saatinde aradi");
          } else if (callTime > 12 && callTime < aksam) {
            return Text("Sizi Öğlen ${callTime}:${minitu} saatinde aradi");
          } else if (callTime > aksam && callTime == aksam) {
            return Text("Sizi Aksam ${callTime}:${minitu} saatinde aradi");
          } else if (callTime < oglen && callTime == sabah) {
            return Text("Sizi Sabah ${callTime}:${minitu} saatinde aradi");
          }
          return Center();
        }

        //icon
        final i = Random();
        final icon = iconlar[i.nextInt(iconlar.length)];

        //name
        final maleName = Random();
        final name =
            maleNames[maleName.nextInt(maleName.nextInt(maleNames.length))];
        //photo
        final randompersonPhoto = Random();
        final userPhoto = photo[randompersonPhoto.nextInt(photo.length)];

        return ListTile(
          trailing: icon,
          subtitle: zamanlayici(),
          title: Text("${name}"),
          leading: CircleAvatar(
            child: Image.network(userPhoto),
          ),
        );
      },
    ));
  }
}
