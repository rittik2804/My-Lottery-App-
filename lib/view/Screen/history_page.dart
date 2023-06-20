import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class history_page extends StatefulWidget {
  const history_page({super.key});

  @override
  State<history_page> createState() => _history_pageState();
}

class _history_pageState extends State<history_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(color: textcolor),
        ),
        backgroundColor: maincolor,
        centerTitle: false,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Silver"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Gold"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Platinium"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Diomond"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
