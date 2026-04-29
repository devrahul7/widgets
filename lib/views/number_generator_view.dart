import 'package:flutter/material.dart';
import 'package:widgets/models/number_generator_model.dart';

class NumberGeneratorView extends StatefulWidget {
  const NumberGeneratorView({super.key});

  @override
  State<NumberGeneratorView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<NumberGeneratorView> {
  late NumberGeneratorModel _model;

  @override
  void initState() {
    super.initState();
    _model = NumberGeneratorModel();
  }

  void _handleAnswer(int value) {
    setState(() {
      _model.checkAnswer(value);
    });
  }

  void _restartGame() {
    setState(() {
      _model.restart();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Largest Number Game"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              "Choose the Largest Number",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _model.gameOver
                        ? null
                        : () => _handleAnswer(_model.num1),
                    child: Text(
                      _model.num1.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _model.gameOver
                        ? null
                        : () => _handleAnswer(_model.num2),
                    child: Text(
                      _model.num2.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Text(
              "Correct Answers: ${_model.correct}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Incorrect Answers: ${_model.incorrect}",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            // Display result and restart button when game is over
            if (_model.gameOver) ...[
              Text(
                _model.getResultMessage(),
                style: const TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _restartGame,
                child: const Text("Restart"),
              ),
            ],
          ],
        ),
      ),
    );
  }
}