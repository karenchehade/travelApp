import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
// import './pages/welcome_page.dart';
import './pages/navpages/main_pages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: DetailPage()
    );
  }
}
