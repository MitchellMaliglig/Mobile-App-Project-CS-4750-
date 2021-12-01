import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mobile_app_project/jp_tools.dart';

class KanaPractice extends StatefulWidget {
  const KanaPractice({Key? key, required this.title, required this.kpNum}) : super(key: key);

  final String title;

  // kpNum = 1 --> hiragana
  // kpNum = 2 --> katakana
  final int kpNum;

  @override
  _KanaPracticeState createState() => _KanaPracticeState();
}

class _KanaPracticeState extends State<KanaPractice> {
  Random random = new Random();

  String kpWord = '';
  String kpKana = '';
  String translation = '';
  bool showAnswer = false;

  // kpNum = 1;
  List kpHiragana = ['asa', 'sushi', 'isu', 'gyuunyuu', 'neko',
                    'manga', 'chiisai', 'yoru', 'gakkou', 'tamago',
                    'ashita', 'imouto', 'utau', 'enpitsu', 'oyogu',
  ];

  // kpNum = 2;
  List kpKatakana = ['ke-ki', 'pan', 'kare-', 'sofa', 'beddo',
                    'basu', 'karenda-', 'kurasu', 'naifu', 'toire',
                    'doa', 'apa-to', 'gita-', 'guramu', 'hoteru',
  ];

  Future<void> generateWord() async {
    String kpWordTemp = '';
    do {
      if (widget.kpNum == 1) {
        kpWordTemp = kpHiragana[random.nextInt(kpHiragana.length)];
      } else if (widget.kpNum == 2) {
        kpWordTemp = kpKatakana[random.nextInt(kpKatakana.length)];
      }
    } while (kpWordTemp == kpWord);
    kpWord = kpWordTemp;
    if (widget.kpNum == 1) {
      kpKana = kana.toHiragana(kpWord);
    } else if (widget.kpNum == 2) {
      kpKana = kana.toKatakana(kpWord);
    }
    showAnswer = false;
    var translate = await toEng(kpKana);
    translation = translate.toString().toLowerCase();
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    if (kpWord == ''){
      generateWord();
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                  child:
                  Text(widget.title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
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
                  Text((showAnswer) ? kpWord  + ': ' + translation : '***',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
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
                        onPressed: () async{
                          speak(kpKana);
                        },
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
