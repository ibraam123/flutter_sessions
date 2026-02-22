
import 'package:flutter/material.dart';

// StatefulWidget and setState Example
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {


  // initState lifecycle method to perform any initialization tasks when the widget is first created
  @override
  void initState() {
    super.initState();
    print(
        'CounterApp initialized with initial counter value: $_counter'
    );
  }


  int _counter = 0; // State variable to hold the counter value

  // setState method to update the counter value and trigger a rebuild of the widget

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value: $_counter', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _incrementCounter, child: const Text('Increment')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _decrementCounter, child: const Text('Decrement')),
          ],
        ),
      ),
    );
  }

  // dispose lifecycle method to perform any cleanup tasks when the widget is removed from the widget tree
  @override
  void dispose() {
    super.dispose();
    print('CounterApp disposed with final counter value: $_counter');
  }
}


