class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // Do an copy the list
    shuffledList.shuffle(); // Embaralha a lista
    return shuffledList;
  }
}
