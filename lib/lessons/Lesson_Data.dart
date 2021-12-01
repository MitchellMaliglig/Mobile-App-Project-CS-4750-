class LessonData{
  late String romaji;
  late String english;

  LessonData(this.romaji, this.english);

  @override
  String toString() {
    return romaji;
  }
}

List<LessonData> greetingsData = [g1, g2, g3, g4, g5, g6, g7, g8, g9, g10];
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

List<LessonData> numbersData = [n1, n2, n3, n4, n5, n6, n7, n8, n9, n10];
LessonData n1 = LessonData('ichi', 'one');
LessonData n2 = LessonData('ni', 'two');
LessonData n3 = LessonData('san', 'three');
LessonData n4 = LessonData('shi', 'four');
LessonData n5 = LessonData('go', 'five');
LessonData n6 = LessonData('roku', 'six');
LessonData n7 = LessonData('shichi', 'seven');
LessonData n8 = LessonData('hachi', 'eight');
LessonData n9 = LessonData('kyuu', 'nine');
LessonData n10 = LessonData('juu', 'ten');
