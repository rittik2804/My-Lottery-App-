import 'package:fatafat_lottery/constant.dart';
import 'package:fatafat_lottery/view/widget/text_field.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          centerTitle: false,
          title: Text(
            "Profile",
            style: TextStyle(color: textcolor),
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width,
                      child: CircleAvatar(
                        child: Center(
                            child: Text(
                          "R",
                          style: TextStyle(color: textcolor, fontSize: 35),
                        )),
                        radius: 30,
                        backgroundColor: maincolor,
                        // backgroundImage: NetworkImage(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5bj96rRqWtfI7OMayBS5waxJBvUiQc88hvw&usqp=CAU"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: TextFormField(
                                obscureText: false,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                  label: Text("Name"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: TextFormField(
                                obscureText: false,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                  label: Text("Email"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: TextFormField(
                                obscureText: false,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  ),
                                  label: Text("Phone"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: TextFormField(
                                obscureText: false,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                  label: Text("Password"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 55.0),
                              child: ElevatedButton(
                                onPressed: (() {}),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 100),
                                  child: Text(
                                    "Update Profile",
                                    style: TextStyle(color: textcolor),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: maincolor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            width: 2, color: maincolor))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
