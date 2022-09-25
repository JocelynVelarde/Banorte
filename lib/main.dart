import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(44, 58, 58, 57),
        scaffoldBackgroundColor: Color.fromARGB(255, 28, 29, 30),
        canvasColor: Color.fromARGB(255, 28, 29, 30),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
