import 'package:flutter/material.dart';

import 'package:whatsapp/chat/personChat.dart';
import 'package:whatsapp/popUp/settings.dart';

import '../calling/calling.dart';
import 'package:get/get.dart';
import '../state/state.dart';

class ChatUi extends StatefulWidget {
  const ChatUi({super.key});

  @override
  State<ChatUi> createState() => _ChatUiState();
}

class _ChatUiState extends State<ChatUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: "MESAJLAR",
            ),
            Tab(
              text: "DURUM",
            ),
            Tab(
              text: "ARAMALAR",
            ),
          ]),
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Yeni Grup")),
                  PopupMenuItem(child: Text("Yeni Toplu Mesaj")),
                  PopupMenuItem(child: Text("Bağlı cihazlar")),
                  PopupMenuItem(child: Text("Yıldızlı Mesajlar")),
                  PopupMenuItem(
                      child: GestureDetector(
                    child: Text("Ayarlar"),
                    onTap: () {
                      Get.to(Settings());
                    },
                  ))
                ];
              },
            ),
          ],
        ),
        body: Center(
            child: TabBarView(
                children: <Widget>[personChat(), state(), calling()])),
      ),
    );
  }
}
