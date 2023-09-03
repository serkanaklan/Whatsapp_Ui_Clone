import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'account.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountSettings(),
                  ));
            },
            leading: Icon(Icons.key),
            title: Text("Hesap"),
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text("Gizlilik"),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Avatar"),
          ),
          const ListTile(
            leading: Icon(Icons.chat),
            title: Text("Sohbetler"),
          ),
          const ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("Bildirimler"),
          ),
        ],
      ),
    );
  }
}
