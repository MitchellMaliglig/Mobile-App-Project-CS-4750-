import 'package:flutter/material.dart';
import 'package:mobile_app_project/lessons/jp_text_intro.dart';

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
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JPTextIntro()),
                  );
                },
                child: Text('Intro to JP Text')),
          ],
        ),
      ),
    );
  }
}