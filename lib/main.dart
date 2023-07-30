import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text(
            "Test App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This is Text",
                style: TextStyle(color: Colors.white,fontSize: 27),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent
                ),
                onPressed: (){
                if (kDebugMode) {
                  print("Hello");
                }
              },
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: const Text("Click me",style: TextStyle(color: Colors.black),),
              )
            ],
          ),
        ),
      ),
    );
  }
}