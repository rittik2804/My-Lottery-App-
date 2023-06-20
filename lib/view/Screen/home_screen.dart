// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:fatafat_lottery/constant.dart';

import 'package:fatafat_lottery/view/Screen/notification_page.dart';
import 'package:fatafat_lottery/view/widget/drawer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/text_field.dart';

import 'history_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int current_time = DateTime.now().hour;
  int amount_number = 0;
  late Timer timer;
  late Random random;
  late double degree;
  late String result;
  late int time;
  int selected_number = 10;

  @override
  void initState() {
    //time_manage();
    super.initState();
    random = Random();
    degree = 0;
    result = "";
  }

  // String calculate(double degree) {
  //   String res = "";
  //   int lowpoint = 0;
  //   int arc = 30;
  //   int sectors = 12;
  //   for (int i = sectors; i > 0; i--) {
  //     if (degree > lowpoint && degree < lowpoint + arc) {
  //       res = i.toString();
  //       break;
  //     }
  //     lowpoint = lowpoint + arc;
  //   }
  //   return res;
  // }

//*******************custome button******************************

  Widget customeButton(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selected_number = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: (selected_number == index) ? maincolor : textcolor),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor:
              (selected_number == index) ? Colors.white : maincolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(width: 2, color: maincolor))),
    );
  }

  // *************************************************************

  @override
  Widget build(BuildContext context) {
    var listPeriod = [
      "8am",
      "9am",
      "10am",
      "11am",
      "12pm",
      "01pm",
      "02pm",
      "03pm",
      "04pm",
      "05pm",
      "06pm",
      "07pm",
      "08am",
    ];
    var keyTime = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 25];
    var currentTime = DateTime.now().hour;

    var listFilteredPeriod = listPeriod.map((period) {
      var index = listPeriod.indexOf(period);
      if (currentTime < keyTime[index]) {
        return period;
      } else {
        return null;
      }
    }).toList();
    listFilteredPeriod
        .removeWhere((item) => ["", null, false, 0].contains(item));
    final firstindex = listFilteredPeriod[0];

    final size = MediaQuery.of(context).size;

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: drawerPage(),
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(color: maincolor),
            ),
            title: Text("Mega Spin"),
            centerTitle: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const notificatio_page()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: IconButton(
                    icon: const Icon(Icons.account_balance_wallet),
                    onPressed: () {
                      showGeneralDialog(
                        context: context,
                        pageBuilder: (BuildContext buildContext,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return Wrap(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 48.0),
                                child: Card(
                                  child: Container(
                                    width: size.width,
                                    height: size.height / 2.1,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      width: 1.0,
                                                      color: Colors.black))),
                                          height: size.height / 5,
                                          width: size.width / 1.09,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 18.0),
                                                child: Text(
                                                  "TOTAL BALANCE",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 14.0),
                                                child: Text("115",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 14.0),
                                                child: Container(
                                                  color: Colors.green,
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text("ADD CASH",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14)),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: 160,
                                            width: size.width / 1.09,
                                            child: ListView(
                                              children: ListTile.divideTiles(
                                                  context: context,
                                                  tiles: const [
                                                    ListTile(
                                                      dense: true,
                                                      title: Text(
                                                          "ADDED AMOUNT",
                                                          style: TextStyle(
                                                              fontSize: 10)),
                                                      subtitle: Text("0"),
                                                    ),
                                                    ListTile(
                                                      dense: true,
                                                      title: Text("WINING CASH",
                                                          style: TextStyle(
                                                              fontSize: 10)),
                                                      subtitle: Text("115"),
                                                    ),
                                                    ListTile(
                                                      dense: true,
                                                      title: Text("BONUS CASH",
                                                          style: TextStyle(
                                                              fontSize: 10)),
                                                      subtitle: Text("20"),
                                                    )
                                                  ]).toList(),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        barrierDismissible: true,
                        barrierLabel: MaterialLocalizations.of(context)
                            .modalBarrierDismissLabel,
                        transitionDuration: const Duration(milliseconds: 200),
                      );
                    }),
              )
            ],
            bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    text: "Silver",
                  ),
                  Tab(
                    text: "Gold",
                  ),
                  Tab(text: "Platinium"),
                  Tab(text: "Diomond")
                ]),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.amberAccent,
                    //       border: Border(
                    //           bottom: BorderSide(color: Colors.black26))),
                    //   height: 30,
                    //   width: MediaQuery.of(context).size.width,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    //         child: Text(
                    //           "This contest will end at 8 AM",
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 14),
                    //         ),
                    //       ),
                    //       IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(
                    //             Icons.history_sharp,
                    //             size: 15,
                    //           )),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      color: Color.fromARGB(255, 228, 224, 212),
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image(
                                height: 120,
                                image: AssetImage("assets/wheel.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Color.fromARGB(255, 228, 224, 212),
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 1.04,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                              "Choose a number",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    customeButton("0", 14),
                                    customeButton("1", 1),
                                    customeButton("2", 2),
                                    customeButton("3", 3),
                                    customeButton("4", 4),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    customeButton("5", 5),
                                    customeButton("6", 6),
                                    customeButton("7", 7),
                                    customeButton("8", 8),
                                    customeButton("9", 9),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Color.fromARGB(255, 228, 224, 212),
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 1.04,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                              "Minium amount is 20",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                            child: amount_number == 0 || amount_number / 9 < 20
                                ? Container(
                                    color: Colors.amber,
                                    width: 50,
                                    height: 0,
                                  )
                                : Text(
                                    "You will get ₹${amount_number}",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue),
                                  ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  color: Color.fromARGB(255, 212, 211, 208),
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: TextFormField(
                                    // decoration: InputDecoration(
                                    //     focusedBorder: amount_number != 0 &&
                                    //             amount_number / 9 < 20
                                    //         ? OutlineInputBorder(
                                    //             borderSide: BorderSide(
                                    //                 color: Colors.red))
                                    //         : null),
                                    keyboardType: TextInputType.phone,

                                    onChanged: (val) {
                                      setState(() {
                                        try {
                                          if (val == "") {
                                            amount_number = 0;
                                          } else {
                                            amount_number = int.parse(val) * 9;
                                          }
                                        } catch (e) {}
                                      });
                                    },
                                  ),
                                ),
                                textbutton(20),
                                textbutton(50),
                                textbutton(90)
                              ],
                            ),
                          ),
                          Expanded(
                              child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 11.0),
                              child: Container(
                                height: 45,
                                width: 390,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (selected_number != 10) {
                                        if (current_time > 20) {
                                          addContest(selected_number,
                                              amount_number, current_time + 1);
                                        } else {
                                          addContest(selected_number,
                                              amount_number, 3);
                                        }
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder: (ctxt) => new AlertDialog(
                                                  title: Text(
                                                      "Please select a number"),
                                                ));
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: maincolor,
                                    ),
                                    child: Text("Bet Now")),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width / 1.04,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.04,
                            color: Color.fromARGB(255, 228, 224, 212),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 9.0),
                                  child: Text(
                                    "Recent Result",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(15, 35),
                                        primary: maincolor),
                                    onPressed: () {},
                                    child: Text(
                                      "Show More",
                                      style: TextStyle(color: textcolor),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                resultlist("5th Betting", 7),
                                resultlist("4th Betting", 2),
                                resultlist("3rd Betting", 4),
                                resultlist("2nd Betting", 6),
                                resultlist("1st Betting", 5),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ))
                  ],
                ),
              ),

              // child: Container(
              //   height: MediaQuery.of(context).size.height,
              //   color: Colors.amber,
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width,
              //     child: Column(
              //       children: [
              //         Container(
              //           height: 50,
              //           width: MediaQuery.of(context).size.width,
              //           child: Row(
              //             children: [
              //               Expanded(
              //                 child: Row(
              //                   // ignore: prefer_const_literals_to_create_immutables
              //                   children: [
              //                     Padding(
              //                       padding: const EdgeInsets.only(left: 8.0),
              //                       child: const Text(
              //                         "The draw will close at",
              //                         style: TextStyle(
              //                             fontWeight: FontWeight.bold,
              //                             fontSize: 15,
              //                             color: Colors.black),
              //                       ),
              //                     ),
              //                     GestureDetector(
              //                       child: Text(
              //                         "$firstindex",
              //                         style: TextStyle(
              //                             fontSize: 20,
              //                             fontWeight: FontWeight.bold,
              //                             color: maincolor),
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //               Expanded(
              //                   child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //                   GestureDetector(
              //                     onTap: () {
              //                       Navigator.push(
              //                           context,
              //                           MaterialPageRoute(
              //                               builder: (context) =>
              //                                   const historyPage()));
              //                     },
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(6),
              //                           color: maincolor),
              //                       child: const Padding(
              //                         padding: EdgeInsets.symmetric(
              //                             vertical: 8, horizontal: 15),
              //                         child: Text(
              //                           "History",
              //                           style: TextStyle(color: textcolor),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: 9,
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(right: 8.0),
              //                     child: GestureDetector(
              //                       onTap: (() {
              //                         Navigator.push(
              //                             context,
              //                             MaterialPageRoute(
              //                                 builder: (context) =>
              //                                     resultPage()));
              //                       }),
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                             borderRadius:
              //                                 BorderRadius.circular(6),
              //                             color: maincolor),
              //                         child: Padding(
              //                           padding: EdgeInsets.symmetric(
              //                               vertical: 8, horizontal: 15),
              //                           child: Text(
              //                             "Result",
              //                             style: TextStyle(color: textcolor),
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                   )
              //                 ],
              //               ))
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 0.0),
              //           child: Container(
              //             height: 240,
              //             decoration: BoxDecoration(

              //                 // boxShadow: [
              //                 //   BoxShadow(color: textcolor, blurRadius: 5)
              //                 // ],
              //                 // borderRadius: BorderRadius.circular(20),
              //                 ),
              //             child: Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 15.0),
              //               child: SizedBox(
              //                 width: size.width / 1.05,
              //                 child: Stack(
              //                   children: [
              //                     Positioned(
              //                         child: Align(
              //                             child: Transform.rotate(
              //                       angle: 3.14 / 180 * degree,
              //                       child: const Image(
              //                           image: AssetImage("assets/wheel.png")),
              //                     ))),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 15),
              //           child: Container(
              //             child: Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 8.0),
              //               child: Column(
              //                 children: [
              //                   Text(
              //                     "Pick a number",
              //                     style: TextStyle(),
              //                   ),
              //                   Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       customeButton("1", 1),
              //                       customeButton("2", 2),
              //                       customeButton("3", 3),
              //                       customeButton("4", 4),
              //                       customeButton("5", 5),
              //                     ],
              //                   ),
              //                   Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       customeButton("6", 6),
              //                       customeButton("7", 7),
              //                       customeButton("8", 8),
              //                       customeButton("9", 9),
              //                       customeButton("10", 10),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           height: 150,
              //           width: MediaQuery.of(context).size.width / 1.05,
              //           child: Column(
              //             children: [
              //               // Container(
              //               //   child: Text(selected.toString()),
              //               // ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                       color: Color.fromARGB(31, 121, 118, 118),
              //                       height: 45,
              //                       width:
              //                           MediaQuery.of(context).size.width / 3,
              //                       child: TextFormField()),
              //                   SizedBox(
              //                     width: 11,
              //                   ),
              //                   Expanded(
              //                       child: Container(
              //                     child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceEvenly,
              //                       children: [
              //                         textbutton(20),
              //                         textbutton(50),
              //                         textbutton(90),
              //                       ],
              //                     ),

              //                     // height: 100,
              //                     // width: 50,
              //                   ))
              //                 ],
              //               ),
              //               Container(
              //                   child: Padding(
              //                       padding: const EdgeInsets.only(bottom: 7),
              //                       child: GestureDetector(
              //                         onTap: () {
              //                           var time = RxInt(DateTime.now().minute);

              //                           if (time < 54) {
              //                             if (selected == 0) {
              //                               return print("object");
              //                             } else {}
              //                           } else {
              //                             return print("Time is Over");
              //                           }
              //                         },
              //                         child: Padding(
              //                           padding:
              //                               const EdgeInsets.only(top: 15.0),
              //                           child: Container(
              //                             // ignore: sort_child_properties_last
              //                             child: const Center(
              //                                 child: Text("Bet Now",
              //                                     // ignore: unnecessary_const
              //                                     style: const TextStyle(
              //                                         color: textcolor,
              //                                         fontWeight:
              //                                             FontWeight.bold,
              //                                         fontSize: 27))),
              //                             decoration: BoxDecoration(
              //                                 borderRadius:
              //                                     BorderRadius.circular(10),
              //                                 // ignore: prefer_const_literals_to_create_immutables
              //                                 color: maincolor),
              //                             //  height: size.height / 12,
              //                             width: size.width / 1,
              //                             height: 50,
              //                           ),
              //                         ),
              //                       ))),
              //               Expanded(
              //                 child: Container(
              //                   child: Column(
              //                     children: [

              //                     ],
              //                   ),
              //                   color: Colors.amber,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
          ),
        ));
  }
}

void addContest(int number, int amount, int current_time) {
  print('Your bet ${number}:${amount / 9} in the contest of ${current_time}');
}

Widget textbutton(int number) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.black45)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: Text(
          "₹" + number.toString(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ));
}

Widget resultlist(String betingname, int result) {
  return Container(
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: Colors.black26))),
      height: 60,
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 224, 212),
                border: Border(right: BorderSide(color: Colors.black26))),
            child: Center(
              child: Text(
                betingname,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 224, 212),
                border: Border(right: BorderSide(color: Colors.black26))),
            child: Center(
              child: Text(
                result.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Expanded(
              child: Container(
            color: Color.fromARGB(255, 228, 224, 212),
            child: Center(
              child: Text(
                "closed ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ))
        ],
      ));
}
