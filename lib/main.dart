import 'package:flutter/material.dart';

import 'includes/start_page.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Church Manager",
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),//Theme
    home: StartPage(),
  )
);


