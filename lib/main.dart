import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> myDetails = [
    "Saad Rahman",
    "DOB: 16 November,1998",
    "Batch 20",
    "FAST National University",
    "Flutter Dev",
    "UI/UX"
  ];

  String det = '';
  int index = 0;
  int current = 0;

  void indexer() {
    index++;
    if (index >= myDetails.length) {
      index = 0;
    }

    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Portfolio',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(246, 250, 249, 249),
        appBar: AppBar(
          elevation: 15.0,
          shadowColor: const Color.fromARGB(255, 5, 5, 5),
          title: const Text(
            "My Portfolio",
            style: TextStyle(
              fontFamily: 'Oswald',
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 26, 25, 25),
                    Color.fromARGB(255, 0, 0, 0)
                  ]),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Material(
                  elevation: 30.0,
                  shadowColor: const Color.fromARGB(255, 3, 3, 3),
                  borderRadius: BorderRadius.circular(100.0),
                  color: const Color.fromARGB(255, 139, 139, 139),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 85, 85, 85),
                    radius: 100.0,
                    backgroundImage: AssetImage(
                      'assets/images/saad1.jpg',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 50.0,
                  bottom: 60.0,
                ),
                child: Text(
                  myDetails[current],
                  style: const TextStyle(
                    shadows: ,
                    fontSize: 40.0,
                    fontFamily: 'Oswald',
                  ),
                ),
              ),
              SizedBox(
                height:50.0,
                width: 70.0,
                child: ElevatedButton(
                  onPressed: indexer,
                  child: const Text('Next'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    elevation: 20.0,
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
