import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color.fromARGB(255, 154, 190, 251),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 126, 173, 205)),
        useMaterial3: true,
      ),
      home: const Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  int counter = 0;
  late Size size;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: const Color.fromARGB(255, 108, 158, 246),
        foregroundColor: const Color.fromARGB(255, 42, 42, 120),
        title: const Text(
          'Basic Counter App',
          style: TextStyle(
            shadows: [
              Shadow(
                color: Color.fromARGB(
                    49, 0, 0, 0), // Choose the color of the shadow
                blurRadius: 2.0, // Adjust the blur radius for the shadow effect
                offset: Offset(2.0,
                    2.0), // Set the horizontal and vertical offset for the shadow
              ),
            ],
          ),
        ),
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          Text('$counter',
              key: const Key('counter'),
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 80,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(
                        100, 0, 0, 0), // Choose the color of the shadow
                    blurRadius:
                        2.0, // Adjust the blur radius for the shadow effect
                    offset: Offset(2.0,
                        2.0), // Set the horizontal and vertical offset for the shadow
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
                height: 10,
              ),
              FloatingActionButton(
                  key: const Key('increment'),
                  onPressed: () {
                    // Code
                    incrementCounter();
                    _decrementCounter();
                  },
                  foregroundColor: Color(0x000000),
                  backgroundColor: const Color.fromARGB(255, 110, 155, 239),
                  splashColor: const Color.fromARGB(255, 14, 226, 22),
                  child: const Icon(Icons.add)),
              const SizedBox(
                width: 20,
                height: 700,
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                splashColor: const Color.fromARGB(255, 206, 60, 60),
                foregroundColor: const Color.fromARGB(255, 5, 30, 74),
                backgroundColor: const Color.fromARGB(255, 110, 155, 239),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
                height: 100,
              ),
              FloatingActionButton(
                onPressed: _resetCounter,
                foregroundColor: const Color.fromARGB(255, 5, 30, 74),
                backgroundColor: const Color.fromARGB(255, 110, 155, 239),
                splashColor: const Color.fromARGB(255, 220, 76, 225),
                child: const Icon(Icons.restore_page),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
