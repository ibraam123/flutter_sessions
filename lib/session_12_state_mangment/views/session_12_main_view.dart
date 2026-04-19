import 'package:flutter/material.dart';
import 'counter_view.dart';
import 'news_view.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/assignment/pages/home_page.dart';

class Session12MainView extends StatelessWidget {
  const Session12MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Session 12: Cubit (Bloc)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const CounterView()),
              ),
              child: const Text('Open Counter App'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const NewsView()),
              ),
              child: const Text('Open News App'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const HomePage()),
              ),
              child: const Text('Open Weather App'),
            ),
          ],
        ),
      ),
    );
  }
}
