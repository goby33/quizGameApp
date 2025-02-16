import 'package:flutter/material.dart';
import 'package:quiz_game_app/presentation/ui/game/game_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Game'),
          backgroundColor: Colors.deepPurple,
        ),
        body: GamePage(),
      ),
    );
  }
}
