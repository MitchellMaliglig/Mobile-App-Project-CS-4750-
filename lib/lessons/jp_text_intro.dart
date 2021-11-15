import 'package:flutter/material.dart';

class JPTextIntro extends StatefulWidget {
  const JPTextIntro({Key? key}) : super(key: key);

  @override
  _JPTextIntroState createState() => _JPTextIntroState();
}

class _JPTextIntroState extends State<JPTextIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Text('Intro to JP Text',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Unlike English, Japanese text is comprised of three different writing systems. '
                      'These three writing systems are hiragana, katakana, and kanji.\n\n'
                      'Hiragana and Katakana are similar in the sense that they are both used to represent '
                      'native Japanese words, while katakana is used for non-native words instead.\n\n'
                      'For example, the word sushi can be expressed in hiragana (すし) or kanji (寿司), while the '
                      'word cake (ケーキ) is expressed in katakana instead, due to it being a non-native word.\n\n'
                      'However, many native words can only be partially expressed with kanji, and many other native words '
                      'don\'t have a kanji representation at all. For instance, 好き (to like) is comprised of '
                      'one kanji character followed by a hiragana character, and です (to be/ is) can only be '
                      'represented with hiragana characters.\n\n'
                      'Technically speaking, every word in Japanese can be represented using hiragana, katakana, and '
                      'in many cases kanji. For example, sushi can be represented in hiragana (すし), katakana (スシ), and kanji'
                      '(寿司).',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
