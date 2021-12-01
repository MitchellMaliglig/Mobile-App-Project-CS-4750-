class LessonData{
  late String romaji;
  late String english;

  LessonData(this.romaji, this.english);

  @override
  String toString() {
    return romaji;
  }
}

LessonData g1 = LessonData('Konnichiwa ', 'hello');
LessonData g2 = LessonData('Moshi moshi', 'hello (on the phone)');
LessonData g3 = LessonData('Ohayou gozaimasu', 'good morning');
LessonData g4 = LessonData('Konbanwa', 'good evening');
LessonData g5 = LessonData('Oyasumi nasai', 'good night');
LessonData g6 = LessonData('Tadaima', 'I\'m back' );
LessonData g7 = LessonData('Okaeri nasai', 'welcome back');
LessonData g8 = LessonData('Arigatou gozaimasu', 'thank you');
LessonData g9 = LessonData('Hajimemashite', 'nice to meet you');
LessonData g10 = LessonData('Ogenki desu ka?', 'how are you?');

List<LessonData> greetingsData = [g1, g2, g3, g4, g5, g6, g7, g8, g9, g10];