import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/theme/theme.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    Text beyaz = Text("Beyaz");
    Text siyah = Text("Siyah");
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap ayarlari"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                durum = !durum;
              });
            },
            title: Text("Tema değiştir"),
            subtitle: Text("Tema ${durum ? beyaz : siyah} olucak"),
          ),
          ListTile(
            title: Text("Numara değiştir"),
            subtitle: Text("+90507******6"),
          )
        ],
      ),
    );
  }
}
