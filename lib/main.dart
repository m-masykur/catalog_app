import 'package:catalog_app/view/CatalogPage.dart';
import 'package:catalog_app/view/HomePage.dart';
import 'package:catalog_app/view/ProfilePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Three Page App",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/catalog': (context) => CatalogPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
