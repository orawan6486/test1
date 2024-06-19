import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String text = "Hello world";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Text(text),
          Text(text),
          Container(
            height: 40,
            width: 180,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  text = "Hello Mod";
                });
              },
              child: const Center(
                child: Text(
                  "chage",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
