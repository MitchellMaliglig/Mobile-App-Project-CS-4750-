import 'package:flutter/material.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);
  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities Page'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            OutlinedButton(
                onPressed: (){},
                child: Text('High Scores')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Hiragana Search')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Katakana Search')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Kanji Search')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Shiritori')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Crossword Puzzle')),
          ],
        ),
      ),
    );
  }
}