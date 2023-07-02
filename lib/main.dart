import 'package:ecommerce/password_page.dart';
import 'package:ecommerce/register_page.dart';
import 'package:flutter/material.dart';

import 'complete_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'welcome_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
