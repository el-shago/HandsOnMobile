import 'package:flutter/material.dart';
import 'ExerciseScreen.dart';
import 'exercise_model.dart';

class ReadingScreen extends StatelessWidget {
  final List<Map<String, String>> signs;

  const ReadingScreen({Key? key, required this.signs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alfabeto',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Asegúrate de memorizar estas letras antes de iniciar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: signs.length,
              itemBuilder: (context, index) {
                final sign = signs[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: Card(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right:
                                    16.0), // Add padding to the right of the icon
                            child: Image.asset(
                              sign['imagePath']!,
                              height: 100, // Adjust the height as needed
                            ),
                          ),
                          Text(
                            sign['letter']!,
                            style: TextStyle(
                                fontSize:
                                    24, // Adjust the font size to make the text bigger
                                fontWeight:
                                    FontWeight.bold // Make the text bold
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                      exercises: [
                        Exercise(
                          signs: [
                            'assets/images/sign_a.png',
                            'assets/images/sign_b.png',
                            'assets/images/sign_c.png'
                          ],
                          question:
                              '¿Cuáles letras representan las siguientes señas?',
                          choices: ['ABC', 'DEF', 'GHI'],
                          correctAnswer: 'ABC',
                        ),
                        Exercise(
                          signs: [
                            'assets/images/sign_d.png',
                            'assets/images/sign_e.png',
                            'assets/images/sign_f.png'
                          ],
                          question:
                              '¿Cuáles letras representan las siguientes señas?',
                          choices: ['HIJ', 'ABC', 'DEF'],
                          correctAnswer: 'DEF',
                        ),
                        Exercise(
                          signs: [
                            'assets/images/sign_h.png',
                            'assets/images/sign_i.png',
                            'assets/images/sign_j.png'
                          ],
                          question:
                              '¿Cuáles letras representan las siguientes señas?',
                          choices: ['KLM', 'HIJ', 'XYZ'],
                          correctAnswer: 'HIJ',
                        ),
                        Exercise(
                          signs: [
                            'assets/images/sign_x.png',
                            'assets/images/sign_y.png',
                            'assets/images/sign_z.png'
                          ],
                          question:
                              '¿Cuáles letras representan las siguientes señas?',
                          choices: ['XYZ', 'UVW', 'GHI'],
                          correctAnswer: 'XYZ',
                        ),
                        Exercise(
                          signs: [
                            'assets/images/sign_u.png',
                            'assets/images/sign_v.png',
                            'assets/images/sign_w.png'
                          ],
                          question:
                              '¿Cuáles letras representan las siguientes señas?',
                          choices: ['DEF', 'ABC', 'UVW'],
                          correctAnswer: 'UVW',
                        ),
                        // Add more exercises here
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                'Continuar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
