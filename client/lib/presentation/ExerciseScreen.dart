import 'package:flutter/material.dart';
import 'exercise_model.dart'; // Import the Exercise model

class ExerciseScreen extends StatefulWidget {
  final List<Exercise> exercises;
  final int initialExerciseIndex;

  const ExerciseScreen({
    Key? key,
    required this.exercises,
    this.initialExerciseIndex = 0,
  }) : super(key: key);

  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late int exerciseIndex;
  String? selectedAnswer; // Add selectedAnswer to the state
  late List<bool> answered;

  @override
  void initState() {
    super.initState();
    exerciseIndex = widget.initialExerciseIndex;
    answered = List<bool>.filled(widget.exercises.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final exercise = widget.exercises[exerciseIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ejercicio ${exerciseIndex + 1}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Progress indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.exercises.length,
                (index) => Icon(
                  Icons.circle,
                  color: answered[index] ? Colors.blue : Colors.grey,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Sign images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: exercise.signs.map((sign) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    sign,
                    height: 150, // Adjust the size as needed
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            // Question text
            Text(
              exercise.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Multiple-choice options
            ...exercise.choices.map((choice) {
              final isCorrect = choice == exercise.correctAnswer;
              final isSelected = choice == selectedAnswer;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected
                        ? (isCorrect ? Colors.green : Colors.red)
                        : Colors.white,
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.grey, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedAnswer = choice;
                    });

                    if (isCorrect) {
                      setState(() {
                        answered[exerciseIndex] = true;
                      });
                      Future.delayed(const Duration(seconds: 1), () {
                        if (exerciseIndex < widget.exercises.length - 1) {
                          setState(() {
                            exerciseIndex++;
                            selectedAnswer = null;
                          });
                        } else {
                          Navigator.pop(context); // Go back to previous page
                        }
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      choice,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
