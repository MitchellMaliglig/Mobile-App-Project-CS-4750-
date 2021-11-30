import 'package:flutter/material.dart';
class BasicKana extends StatefulWidget {
  const BasicKana({Key? key}) : super(key: key);

  @override
  _BasicKanaState createState() => _BasicKanaState();
}

class _BasicKanaState extends State<BasicKana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Center(
              child: Text('Basic Kana',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '     Learning hiragana and katakana is the best first step to taken when it comes to '
                    'learning how to read and write in Japanese. Once you accomplish that, you will '
                    'be able to represent any word in Japanese, and all you will have to worry about '
                    'next is kanji (which we will skip for now).\n\n'
                    '     Hiragana and katakana are practically the same in terms of structure, so if you '
                    'learn one, then learning the other will be much easier. For simplicity\'s sake, we will '
                    'only focus on hiragana for now, primarily due to its larger presence in Japanese '
                    'writing compared to katakana.\n\n'
                    '     Let\'s start by first learning the vowels:\n'
                    'あ - a: Soft A sound, \"a\" in \"father.\"\n'
                    'い - i: Long E sound, \"ee\" in \"meet.\"\n'
                    'う - u: Double O sound, \"oo\" in \"boot.\"\n'
                    'え - e: Short E sound, \"e\" in \"met.\"\n'
                    'お - o: Long O sound, \"o\" , \"boat.\"\n\n'
                    '     Additional characters can be created by attaching a consonant to the vowel (such '
                    'as k). Something to note is that the vowels will still retain their original sound when '
                    'paired with a consonant.\n\n'
                    'か - ka: \"ca\" in \"cause\"\n'
                    'き - ki: \"key\"\n'
                    'く - ku: \"coo\"\n'
                    'け - ke: \"ke\" in \"ketchup\"\n'
                    'こ - ko: \"co\" in \"coat\"\n\n'
                    '     The same sort of pattern can be applied to other consonants used in the alphabet. '
                    'Take a look at the following chart:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: InteractiveViewer(
                  child: Image.asset('assets/basichiraganachart.png')),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('     A few things to note here:\n\n'
                  '- Y and W have only 3 and 2 character combinations, respectively.\n'
                  '- N can be followed by a vowel or remain by itself.\n'
                  '- Some characters have a reading that may be different from what you expect ('
                  'し,ち,つ & ふ are read as shi, chi, tsu & fu, respectively).\n\n'
                  '     Once you have this chart down, then you will have mastered basic hiragana.\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
