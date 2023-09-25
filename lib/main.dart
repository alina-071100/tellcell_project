import 'package:first_project/pages/home_page.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      theme: ThemeData(
        // primarySwatch:Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}