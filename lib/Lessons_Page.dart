import 'package:flutter/material.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({Key? key}) : super(key: key);
  @override
  _LessonsPageState createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons Page'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            OutlinedButton(
                onPressed: (){},
                child: Text('Intro to JP Alphabet')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Hiragana 1')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Hiragana 2')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Katakana 1')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Katakana 2')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Level 1 Kanji')),
          ],
        ),
      ),
    );
  }
}