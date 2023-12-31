import 'package:flutter/material.dart';

import 'package:whatsapp/chat/chat_ui.dart';
import 'package:whatsapp/theme/theme.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: durum ? siyah : beyaz,
      home: ChatUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
