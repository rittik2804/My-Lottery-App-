import 'package:fatafat_lottery/constant.dart';
import 'package:fatafat_lottery/view/Screen/auth/login_screen.dart';
import 'package:fatafat_lottery/view/Screen/history_page.dart';
import 'package:fatafat_lottery/view/Screen/history_screen.dart';
import 'package:fatafat_lottery/view/Screen/how_to_play.dart';
import 'package:fatafat_lottery/view/Screen/profilePage.dart';
import 'package:fatafat_lottery/view/Screen/wallet_page.dart';
import 'package:flutter/material.dart';

class drawerPage extends StatefulWidget {
  const drawerPage({super.key});

  @override
  State<drawerPage> createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(color: maincolor),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 1),
              child: GestureDetector(
                onTap: (() {}),
                child: Container(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5bj96rRqWtfI7OMayBS5waxJBvUiQc88hvw&usqp=CAU"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rittik Mondal",
                                style:
                                    TextStyle(fontSize: 27, color: textcolor),
                              ),
                              Text(
                                "+917439064216",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: textcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //     child: Container(
                      //   child: Center(
                      //     child: Icon(
                      //       Icons.arrow_left_outlined,
                      //       size: 70,
                      //       color: textcolor,
                      //     ),
                      //   ),
                      // ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          ListTile(
            title: const Text('Available Balance'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Text(
              "115",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Wallet_page()));
            },
          ),
          ListTile(
            title: const Text('Earn 20'),
            leading: const Icon(Icons.currency_rupee),
            trailing: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: const Text(
                    "INVITE",
                    style: const TextStyle(fontSize: 9),
                  ),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginScreen()));
            },
          ),
          ListTile(
              title: const Text("History"),
              leading: const Icon(Icons.history),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => history_page()));
              }),
          ListTile(
            title: const Text('How to play'),
            leading: const Icon(Icons.games),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => how_to_play()));
            },
          ),
          ListTile(
              title: const Text("Terms & Condition"),
              leading: const Icon(Icons.bookmark),
              onTap: () {}),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Log out'),
            leading: const Icon(Icons.logout),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    ));
  }
}
