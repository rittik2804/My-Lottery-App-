import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';

class historyPage extends StatefulWidget {
  const historyPage({Key? key}) : super(key: key);

  @override
  State<historyPage> createState() => _historyPageState();
}

class _historyPageState extends State<historyPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text(
          "Fatafat Lottery",
          style: TextStyle(color: textcolor),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: SizedBox(
          height: size.height,
          width: size.width,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ListTile(
                shape:
                    RoundedRectangleBorder(side: BorderSide(color: textcolor)),
                hoverColor: Colors.black,
                textColor: Colors.black,
                tileColor: Colors.white,
                leading: Text(
                  "4",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                title: Text(
                  "You bet for",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                trailing: Text(
                  "rs 30",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const ListTile(
                shape:
                    RoundedRectangleBorder(side: BorderSide(color: textcolor)),
                textColor: Colors.black,
                tileColor: Colors.white,
                leading: Text(
                  "9",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                title: Text(
                  "You bet for",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                trailing: Text(
                  "rs 50",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const ListTile(
                shape:
                    RoundedRectangleBorder(side: BorderSide(color: textcolor)),
                textColor: Colors.black,
                tileColor: Colors.white,
                leading: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                title: Text(
                  "You bet for",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                trailing: Text(
                  "rs 50",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
