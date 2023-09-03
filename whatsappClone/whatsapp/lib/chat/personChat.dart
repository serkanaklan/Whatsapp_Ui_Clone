import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'dart:math';
import 'package:whatsapp/message/mesaj.dart';
import 'package:whatsapp/name/maleNames.dart';
import 'package:whatsapp/photo/photo.dart';

import '../popUp/settings.dart';
import 'package:eosdart/eosdart.dart' as eos;

class personChat extends StatefulWidget {
  const personChat({super.key});

  @override
  State<personChat> createState() => _personChatState();
}

class _personChatState extends State<personChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            final randomMessage = Random();
            final message1 = message[randomMessage.nextInt(message.length)];
            final time =
                DateTime.now().add(Duration(minutes: randomMessage.nextInt(2)));

            final maleName = Random();
            final name =
                maleNames[maleName.nextInt(maleName.nextInt(maleNames.length))];

            final randompersonPhoto = Random();
            final userPhoto = photo[randompersonPhoto.nextInt(photo.length)];

            return ListTile(
              leading: CircleAvatar(child: Image.network(userPhoto)),
              title: Text(name),
              subtitle: Text("${message1}"),
            );
          },
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.clear_all)),
    );
  }
}
