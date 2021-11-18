import 'package:flutter/material.dart';
import 'package:kana_kit/kana_kit.dart';
import 'dart:math';

class KanaPractice extends StatefulWidget {
  const KanaPractice({Key? key}) : super(key: key);

  @override
  _KanaPracticeState createState() => _KanaPracticeState();
}

class _KanaPracticeState extends State<KanaPractice> {
  final kana = KanaKit();
  Random random = new Random();

  var kpNum = 1;
  var kpWord = 'taberu';
  var kpKana = 'たべる';
  bool showAnswer = false;

  // kpNum = 1;
  var kpHiragana = ['taberu', 'sushi', 'jisho', 'niku', 'neko',
                    'manga', 'shinbun', 'yoru', 'gakkou', 'tamago',
                    'ashita', 'imouto', 'utau', 'enpitsu', 'okane',
  ];

  // kpNum = 2;
  var kpKatakana = ['ke-ki', 'pan', 'kare-', 'sofa', 'beddo',
                    'basu', 'karenda-', 'kurasu', 'naifu', 'toire',
                    'doa', 'apa-to', 'gita-', 'guramu', 'hoteru',
  ];

  void generateWord(){
    var kpWordTemp;
    do {
      if (kpNum == 1) {
        kpWordTemp = kpHiragana[random.nextInt(kpHiragana.length)];
      } else if (kpNum == 2) {
        kpWordTemp = kpKatakana[random.nextInt(kpKatakana.length)];
      }
    } while (kpWordTemp == kpWord);
    kpWord = kpWordTemp;
    if (kpNum == 1) {
      kpKana = kana.toHiragana(kpWord);
    } else if (kpNum == 2) {
      kpKana = kana.toKatakana(kpWord);
    }
    showAnswer = false;
    setState((){});
  }

  void changeKana(int value){
    if (value != kpNum) {
      if (value == 1) {
        kpNum = 1;
      } else if (value == 2) {
        kpNum = 2;
      }
      generateWord();
      setState((){});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopupMenuButton(
                    icon: Icon(Icons.menu),
                    elevation: 40,
                    onSelected: (int value){
                      changeKana(value);
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Text('Hiragana',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 1,
                      ),
                      PopupMenuItem(
                          child: Text('Katakana',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 2,
                      ),
                    ]
                ),
                Expanded(
                  flex: 5,
                  child: Center(
                      child:
                      Text('Kana Practice',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          Expanded(
            flex: 50,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 5),
                    child: Text(kpKana, // word in kana
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text((showAnswer) ? kpWord : '---', // word in romaji
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
          ),

          Expanded(
            flex: 40,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){
                            showAnswer = !showAnswer;
                            setState((){});
                          },
                          child: Text((!showAnswer) ? 'Show Answer' : 'Hide Answer')
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 200,
                    child: ElevatedButton(
                        onPressed: generateWord,
                        child: Text('Another Word')
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 200,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Say Word')
                    ),
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}
