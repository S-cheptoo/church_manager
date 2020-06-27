import "package:flutter/material.dart";
import 'hex_color.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterPage();
  }


}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0), //SizedBox

            Column(
              children: <Widget>[
                Image.asset("images/register32.png"),
                SizedBox(height:20.0),//SizedBox
                Text(
                  "REGISTER",
                  style: TextStyle(color: HexColor("00507D"),fontSize: 20.0),
                )//Text
              ],
            ), //Column

            Column(
              children: <Widget>[
                SizedBox(height:40.0),//SizedBox

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value){
                    if(value.isEmpty){
                      return "Enter your email address";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),//Border
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("00507D"), width: 1.0),
                      ),
                  ),//Decoration
                ),//TextFormField

                SizedBox(height:20.0),//SizedBox

                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (String value){
                    if(value.isEmpty){
                      return "Enter your password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),//Border
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("00507D"), width: 1.0),
                      ),
                  ),//Decoration
                ),//TextFormField

                SizedBox(height:20.0),//SizedBox

                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (String value){
                    if(value.isEmpty){
                      return "Repeat your password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Repeat Password',
                      hintText: 'Repeat your Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),//Border
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("00507D"), width: 1.0),
                      ),
                  ),//Decoration
                ),//TextFormField

                SizedBox(height:20.0),//SizedBox

                SizedBox(
                  width: double.infinity,
                  child: OutlineButton(
                    padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                    onPressed: () {},

                    child: Text(
                      "Register",
                      style: TextStyle(color: HexColor("558AA8"),fontSize: 16.0),
                    ),//Text

                    borderSide: BorderSide(color: HexColor("558AA8")),
                    shape: StadiumBorder(),
                  ),//Login Button
                ),//SizedBox

                SizedBox(height:10.0),//SizedBox

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
                      style: TextStyle(color: HexColor("001A29"),fontSize: 16.0),
                    ),

                    borderSide: BorderSide(color: HexColor("001A29")),
                    shape: StadiumBorder(),
                  ),//Register Button
                ),//SizedBox


                SizedBox(
                  width: double.infinity,
                  child:OutlineButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: Text(
                      "Back",
                      style: TextStyle(color: HexColor("424242")),
                    ),//Text

                    borderSide: BorderSide(color: HexColor("424242")),
                    shape: StadiumBorder(),
                  ),//Back Button
                ),//SizedBox

                SizedBox(height:20.0),//SizedBox

              ],
            ),

          ],
        ), //ListView
      ), //SafeArea
    ); //Scaffold
  }
}