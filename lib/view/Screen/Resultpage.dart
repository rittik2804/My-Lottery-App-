// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';

class resultPage extends StatefulWidget {
  const resultPage({Key? key}) : super(key: key);

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fatafat Lottery",
          style: TextStyle(color: textcolor),
        ),
        centerTitle: false,
        backgroundColor: maincolor,
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.amber,
          child: Column(
            children: [
              Container(
                // ignore: sort_child_properties_last
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text("West Bengal Fatafat Result",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Text("12-07-2021",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
                height: 70,
                width: size.width,
                color: Colors.greenAccent,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //second row start from here

              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: 60,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1 Betting",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("09:10 am",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("357=5",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        width: 3,
                      ),
                      Expanded(
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Container(
                              height: 35,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green[800],
                              ),
                              child: Center(
                                child: Text("Clossed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 40,
                width: size.width,
                color: Colors.green[400],
                child: Center(
                    child: Text("West Bengal Fatafat Result Record",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
