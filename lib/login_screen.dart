import 'dart:ui';

import 'package:cosmico/demo_home.dart';
import 'package:cosmico/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Uri _url = Uri.parse('https://www.twitter.com');
final Uri _url2 = Uri.parse('https://www.facebook.com');
final Uri _url3 = Uri.parse('https://www.google.com');

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image102x.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
              top: 60,
              right: 50,
              left: 50,
              child: Image.asset('assets/Vector.png')),
          Positioned(
              top: 240,
              child: Image.asset(
                'assets/image14.png',
                fit: BoxFit.cover,
                height: 600,
                width: 400,
              )),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 220, top: 290),
                    child: Image.asset(
                      'assets/Signin.png',
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xffFFFFFF)),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xff8D8E99)),
                      fillColor: Color(0xff091522),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffFFFFFF))),
                      enabled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xffFFFFFF)),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xff8D8E99)),
                      fillColor: Color(0xff091522),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffFFFFFF))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffFFFFFF))),
                      enabled: true,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 180, top: 20),
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(fontSize: 16, color: Color(0xff11DCE8)),
                    )),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff72A5F2),
                        borderRadius: BorderRadius.circular(30)),
                    height: 50,
                    width: 320,
                    child: Image.asset('assets/button.png'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/Frame313.png'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        // onPressed: _launchUrl,
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xff03A9F4),
                          size: 40,
                        )),
                    SizedBox(width: 10,),
                    IconButton(
                        // onPressed: _launchUrl2,
                        onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          size: 40,
                          color: Color(0xff4267B2),
                        )),
                    SizedBox(width: 10,),
                    IconButton(
                        // onPressed: _launchUrl3,
                      onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.google,
                          size: 40,
                        )),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(fontSize: 16, color: Color(0xff8D8E99)),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: Color(0xff11DCE8)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//
// Future<void> _launchUrl() async {
//   if (!await _launchUrl(_url)) {
//     throw Exception('Could not launch $_url');
//   }
// }
// Future<void> _launchUrl2() async {
//   if (!await _launchUrl(_url2)) {
//     throw Exception('Could not launch $_url');
//   }
// }
// Future<void> _launchUrl3() async {
//   if (!await _launchUrl(_url3)) {
//     throw Exception('Could not launch $_url');
//   }
// }
//
//
