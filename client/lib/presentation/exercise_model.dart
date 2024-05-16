class Exercise {
  final List<String> signs;
  final String question;
  final List<String> choices;
  final String correctAnswer;
  final bool isReading; // Add this field to indicate a reading exercise

  Exercise({
    required this.signs,
    required this.question,
    required this.choices,
    required this.correctAnswer,
    this.isReading = false, // Default value is false
  });
}
