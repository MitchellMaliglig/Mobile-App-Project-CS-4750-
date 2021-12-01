import 'package:flutter/material.dart';

class JPTextIntro extends StatefulWidget {
  const JPTextIntro({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  _JPTextIntroState createState() => _JPTextIntroState();
}

class _JPTextIntroState extends State<JPTextIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(fontSize:30),),
        backgroundColor: widget.color,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '     Unlike English, Japanese text is comprised of three different writing systems. '
                    'These three writing systems are hiragana, katakana, and kanji.\n\n'
                    '     Hiragana and katakana (collectively referred to as \"kana\") are both syllabic alphabets of 47 '
                    'characters, each of which represents a sound. On the other hand, kanji is not a syllabic alphabet, '
                    'and it consists of over 8000+ characters combined, each of which represents an abstract concept, '
                    'general word, or a name. Additionally, many kanji characters are just combinations of other kanji. '
                    'For example, forest (森) is really just tree (木) written three times.\n\n'
                    '     Hiragana and kanji are similar in the sense that they are both used to represent '
                    'native Japanese words, while katakana is used for non-native words instead. '
                    'For example, the word sushi can be expressed in hiragana (すし) or kanji (寿司), while the '
                    'word cake (ケーキ) is expressed in katakana instead, due to it being a non-native word.\n\n'
                    '     However, many native words can only be partially expressed with kanji, and many other native words '
                    'don\'t have a kanji representation at all. For instance, 好き (to like) is comprised of '
                    'one kanji character followed by a hiragana character, and です (to be/ is) can only be '
                    'represented with hiragana characters.\n\n'
                    '     Something to keep in mind when it comes to kanji is that the same character can have many different '
                    'readings depending on the context, and different kanji characters can have the same reading but '
                    'different meanings. For example, the kanji for tree (木) can be read as \"ki\", \"ko\", \"boku\", '
                    'and \"moku\", depending on the context. Similarly, the kanji character 気 can also be read as \"ki\", '
                    'but also has an entirely different meaning (spirit, mind, heart).\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
