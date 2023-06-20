import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class how_to_play extends StatefulWidget {
  const how_to_play({super.key});

  @override
  State<how_to_play> createState() => _how_to_playState();
}

class _how_to_playState extends State<how_to_play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "How To Play",
          style: TextStyle(color: textcolor),
        ),
        centerTitle: false,
        backgroundColor: maincolor,
      ),
      body: Container(),
    );
  }
}
