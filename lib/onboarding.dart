import 'package:drorji/login.dart';
import 'package:drorji/signup.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/back.png",
                  width: 24,
                  height: 10,
                ),
                Text("Skip")
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
            constraints: BoxConstraints.expand(height: 300.0),
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/doc.png"), fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            width: MediaQuery.of(context).size.width * 0.55,
            child: FittedBox(
              child: Text(
                "Dr orji",
                style: TextStyle(fontSize: 10.0),
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
                primary: _hexcolor("#185FE6"), // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: Text(
                'New patient? sign up',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Old patient? sign in",
                  style: TextStyle(fontSize: 15),
                ),
              ))
        ]),
      ),
    );
  }

  Color _hexcolor(String hex) {
    final hexcode = hex.replaceAll("#", "");
    return Color(int.parse("FF$hexcode", radix: 16));
  }
}
