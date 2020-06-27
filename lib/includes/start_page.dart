import 'package:church_manager/includes/register_page.dart';
import 'package:flutter/material.dart';
import 'hex_color.dart';
import 'login_page.dart';

class StartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StartPage();
  }

}

class _StartPage extends State<StartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0), //SizedBox

            Column(
              children: <Widget>[
                Image.asset("images/church.png"),
                SizedBox(height:20.0),//SizedBox
                Text(
                  "CHURCH MANAGER",
                  style: TextStyle(color: HexColor("00507D"),fontSize: 18.0),
                )//Text
              ],
            ), //Column

            Column(
              children: <Widget>[
                SizedBox(height:40.0),//SizedBox

                SizedBox(
                  width: double.infinity,
                  child:OutlineButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },

                    child: Text(
                      "Login",
                      style: TextStyle(color: HexColor("558AA8")),
                    ),//Text

                    borderSide: BorderSide(color: HexColor("558AA8")),
                    shape: StadiumBorder(),
                  ),//Login Button
                ),//SizedBox

                SizedBox(
                  width: double.infinity,
                  child:OutlineButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },

                    child: Text(
                      "Register",
                      style: TextStyle(color: HexColor("001A29")),
                    ),

                    borderSide: BorderSide(color: HexColor("001A29")),
                    shape: StadiumBorder(),
                  ),//Register Button
                ),//SizedBox

              ],
            ),

          ],
        ), //ListView
      ),//SafeArea
    );//Scaffold
  }

}

