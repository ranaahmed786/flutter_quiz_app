class Mcq {
  final String Question;
  final List<String> Options;
  Mcq({required this.Question, required this.Options});
  List<String> shuffleOptions() {
    return List.of(Options)..shuffle();
  }
}
