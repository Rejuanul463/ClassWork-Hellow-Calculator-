import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,),
            textAlign: TextAlign.end,
            readOnly: true,
            controller: TextEditingController(text: ''), // Replace '579' with your current input
          ),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('+'),
          ),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('-'),
          ),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('x'),
          ),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('/'),
          ),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('='),
          ),
        ],
      ),
    );
  }
}