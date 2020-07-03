import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:flutter_icons/flutter_icons.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  _launchURL(String url) async {
    print(url);
    if (await canLaunch(url)) {
      print(url);
      await launch(url);
      print(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff213A50), const Color(0xff071930)],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  "pic.png",
                  width: 250,
                  height: 250,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Nishtha",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "I am B.tech 3rd year student from Guru Nanak Dev Engineering College Ludhiana.This is my first Project in flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Connect with me", style: TextStyle(
                color: Colors.white,
                fontSize: 14
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      _launchURL("https://twitter.com/Nishtha3512");
                    },
                    child: Image.asset("twitter.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.instagram.com/Nishtha3512/");
                    },
                    child: Image.asset("instagram.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
               GestureDetector(
                    onTap: (){
                      _launchURL("https://www.linkedin.com/in/nishtha-arora-645047188/");
                    },
                    child: Image.asset("linkedin.png",height: 23,width: 23,),
                ),
                SizedBox(width: 16,),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://github.com/Nishtha3512");
                  },
                  child: Image.asset("github.png",height: 23,width: 23,),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}