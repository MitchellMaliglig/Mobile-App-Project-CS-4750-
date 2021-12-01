import 'package:flutter/material.dart';
class BasicKana extends StatefulWidget {
  const BasicKana({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  _BasicKanaState createState() => _BasicKanaState();
}

class _BasicKanaState extends State<BasicKana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(fontSize:30),),
        backgroundColor: widget.color,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                    '     Hiragana and katakana are practically the same in terms of structure, so if you '
                    'learn one, then learning the other will be much easier. For simplicity\'s sake, we will '
                    'only include hiragana in the discussion. The vowels are as follows:\n\n'
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
                    '     The same sort of pattern can be applied to other consonants used in the alphabet.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: InteractiveViewer(
                  child: Image.asset('assets/basichiraganachart.png')),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: InteractiveViewer(
                  child: Image.asset('assets/basickatakanachart.jpg')),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('     A few things to note here:\n\n'
                  '- Y and W have only 3 and 2 character combinations, respectively.\n'
                  '- N can be followed by a vowel or remain by itself.\n'
                  '- Some characters have a reading that may be different from what you expect ('
                  'し,ち,つ & ふ are read as shi, chi, tsu & fu, respectively).\n\n',
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
