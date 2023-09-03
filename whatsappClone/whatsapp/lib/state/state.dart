import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/photo/statePhoto/statePhoto.dart';

import '../message/mesaj.dart';
import '../name/maleNames.dart';
import '../photo/photo.dart';

class state extends StatefulWidget {
  const state({super.key});

  @override
  State<state> createState() => _stateState();
}

class _stateState extends State<state> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            final maleName = Random();
            final name =
                maleNames[maleName.nextInt(maleName.nextInt(maleNames.length))];

            final randompersonPhoto = Random();
            final durum = statePhoto[randompersonPhoto.nextInt(photo.length)];
            return ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(name),
                      content: Image.network(durum),
                    );
                  },
                );
              },
              leading: CircleAvatar(
                foregroundImage: NetworkImage(durum),
              ),
              title: Text(name),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.grey[600],
            onPressed: () {},
            child: Icon(
              Icons.mic,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child:
                Icon(Icons.clear_all_outlined, size: 30, color: Colors.black),
          )
        ],
      ),
    );
  }
}
