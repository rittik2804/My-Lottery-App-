import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';

class notificatio_page extends StatefulWidget {
  const notificatio_page({Key? key}) : super(key: key);

  @override
  State<notificatio_page> createState() => _notificatio_pageState();
}

class _notificatio_pageState extends State<notificatio_page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text("Fatafat Lottery"),
        centerTitle: false,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: const Center(
            child: Text("You don't have any notifications",
                style: TextStyle(fontSize: 20, color: Colors.black45))),
      ),
    );
  }
}
