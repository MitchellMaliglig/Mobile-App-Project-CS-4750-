import 'package:flutter/material.dart';
class AdvancedKana extends StatefulWidget {
  const AdvancedKana({Key? key}) : super(key: key);

  @override
  _AdvancedKanaState createState() => _AdvancedKanaState();
}

class _AdvancedKanaState extends State<AdvancedKana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Center(
              child: Text('Advanced Kana',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('\"Tenten\" and \"Maru:\"',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
            ),
            Text('     A \"tenten\" (lit. dots) is a mark that you can put next to certain syllables '
                'in order to change the sound, specifically ones that have a consonant followed by a '
                'vowel (but not all). By marking the character with tenten (\"), you change the sound of '
                'the consonant of the original character. This will be the case for all characters under '
                'that consonant. Observe the following examples. Keep in mind that the same pattern will be '
                'the case for all vowels, and not just \"a\".\n\n'
                'k --> g: ka (が) --> ga (が)\n'
                's --> z: sa (さ) --> za (ざ)\n'
                't --> d: ta (た) --> da (だ)\n'
                'h --> b: ha (は) --> ba (ば)\n\n'
                '     The h- characters are unique in the sense that you can also write them with \"maru\" '
                '(lit. circle). No other hiragana characters can be written with maru. An easy way to remember '
                'this is to think of the circle mark as a pie, since attaching maru to an h- character gives it a '
                'p- sound (p as in pie).\n\n'
                'ha (は) --> pa (ぱ)\n'
                'hi (ひ) --> pi (ぴ)\n'
                'fu (ふ) --> pu (ぷ)\n'
                'he (へ) --> pe (ぺ)\n'
                'ho (ほ) --> po (ぽ)\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Combinations:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                ),
              ),
            ),
            Text('     Combination characters may seem complicated at first glance, but they all follow a '
                'consistent pattern. By attaching a small ya (や), yu (ゆ) or yo (よ) to the syllable, you '
                'change the pronunciation of said syllable.\n\n'
                'きゃ-きゅ-きょ --> kya - kyu- kyo\n\n'
                '     The same sort of pattern applies to many other syllables.\n\n'
                'しゃ-しゅ-しょ --> sha - shu - sho\n'
                'ちゃ-ちゅ-ちょ --> cha - chu - cho\n'
                'にゃ-にゅ-にょ --> nya - nyu - nyo\n\n'
                '     Keep in mind that the y- character must be written small. By writing the y- character in '
                'a larger size, it is no longer a combination character.\n\n'
                'きや-きゆ-きよ --> kiya - kiyu - kiyo\n\n'
                '     Note that more combination characters exist on top of the ones mentioned here. If you '
                'can learn the pattern of them, then the rest should be straightforward.\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Small tsu (っ):',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                ),
              ),
            ),
            Text('     By adding a small っ (tsu) before the syllable, you turn the following character into a '
                'double consonant. By making the character into a double consonant, you basically put two '
                'consonants together, thus \"extending\" the sound of the consonant. This is easier to '
                'explain with some examples:\n\n'
                'moto (もと) --> motto (もっと)\n'
                'ipun (いぷん) --> ippun (いっぷん)\n'
                'gakou (がこう) --> gakkou (がっこう)\n\n'
                '     Notice how by simply adding a small っ we change the consonant into a double consonant. '
                'As you can see, the consonant that gets doubled is the consonant of the character that comes '
                'right after the small っ. In the first example, we add an extra \"t\" to the word, since the '
                'character after the small っ is to (と), and that character has the consonant \"t\".\n\n'
                '     When you pronounce a word that uses small っ, you sort of pronounce the words like '
                'there\'s some space in between. For example:\n\n'
                'motto --> mot_to\n\n'
                'Although the word itself technically contains no space in it, thinking of it this way will '
                'help your pronunciation. You end the first part with a \"t\", and start the second part with '
                'a \"t\". You sort of pronounce both consonants, separately, in order to say the word.\n\n'
                '     One final note that you should keep in mind is that writing a larger つ instead of a '
                'small っ will not create the effect that we just talked about, and thus a double consonant '
                'will not be formed.\n\n'
                'moto (もと) --> motsuto (もつと)\n'
                'ipun (いぷん) --> itsupun (いつぷん)\n'
                'gakou (がこう) --> gatsukou (がつこう)\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: InteractiveViewer(
                  child: Image.asset('assets/hiraganachart.png')),
            ),
            Text('     If you can master the hiragana chart shown above, plus everything else that we have talked '
                'about, then you will have learned everything that there is to know about hiragana. Learning katakana '
                'should be much easier now, given the fact that you now understand how hiragana works.\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
