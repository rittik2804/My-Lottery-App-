import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Wallet_page extends StatefulWidget {
  const Wallet_page({super.key});

  @override
  State<Wallet_page> createState() => _Wallet_pageState();
}

class _Wallet_pageState extends State<Wallet_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text(
          "Available Balance",
          style: TextStyle(color: textcolor),
        ),
        centerTitle: false,
      ),
      body: Container(
        // color: Colors.white10,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: textcolor)),
                //color: Colors.white60,
                height: 300,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Total Balance"),
                            Text(
                              "115",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                            ElevatedButton(
                              onPressed: (() {}),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Add Cash",
                                  style: TextStyle(
                                      color: textcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14),
                                      // border:
                                      //     Border.all(width: 1, color: textcolor),
                                      boxShadow: [
                                        BoxShadow(
                                            color: textcolor, blurRadius: 15)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Wining Cash"),
                                      Text(
                                        "75",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26),
                                      ),
                                      ElevatedButton(
                                        onPressed: (() {}),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Withdraw",
                                            style: TextStyle(
                                                color: textcolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: maincolor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14),
                                      // border:
                                      //     Border.all(width: 1, color: textcolor),
                                      boxShadow: [
                                        BoxShadow(
                                            color: textcolor, blurRadius: 15)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Bonus Cash"),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26),
                                      ),
                                      ElevatedButton(
                                        onPressed: (() {}),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Earn Cash",
                                            style: TextStyle(
                                                color: textcolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: maincolor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  height: 224,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: textcolor)),
                  child: ListView(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Card(
                          child: ListTile(
                            title: Text("Payment History"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Card(
                          child: ListTile(
                            title: Text("Payment Settings"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Card(
                          child: ListTile(
                            title: Text("Refer & Earn"),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
