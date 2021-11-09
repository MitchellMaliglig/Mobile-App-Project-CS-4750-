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
  var kpWord = '';

  // kpNum = 1;
  var kpHiragana = ['taberu', 'sushi', 'jisho'];

  // kpNum = 2;
  var kpKatakana = ['keiki', 'pan', 'karee'];

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
                    onSelected: (value){

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
                            ),),
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
                    child: Text('すし',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Sushi',
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
                    margin: EdgeInsets.only(top: 20, bottom: 15),
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text('Show Answer')
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: 200,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Another Word')
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
