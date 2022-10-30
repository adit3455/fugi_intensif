import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  double foSize = 20;

  void increaseFoSize() {
    setState(() {
      foSize += 10;
    });
  }

  void decreaseFoSize() {
    setState(() {
      foSize -= 10;
    });
  }

  void add() {
    setState(() {
      counter += 1;
    });
  }

  void remove() {
    setState(() {
      counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter number now is : $counter",
            style: TextStyle(fontSize: foSize),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () => remove(), child: const Icon(Icons.remove)),
              OutlinedButton(
                  onPressed: () => add(), child: const Icon(Icons.add)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () => decreaseFoSize(),
                  child: const Icon(Icons.remove)),
              OutlinedButton(
                  onPressed: () => increaseFoSize(),
                  child: const Icon(Icons.add)),
            ],
          ),
        ],
      )),
    );
  }
}
