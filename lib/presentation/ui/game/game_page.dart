import 'package:flutter/material.dart';
import 'package:quiz_game_app/data/repositories/questions_repository.dart';

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() {
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            child: Container(
              color: Colors.deepPurple,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Charger le quiz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () async { await QuestionRepository().getQuestions();
            },
          ),
        ],
      ),
    );
  }
}
