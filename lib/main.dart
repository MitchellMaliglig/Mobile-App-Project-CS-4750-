import 'package:flutter/material.dart';
import 'package:mobile_app_project/activities/kana_practice.dart';
import 'package:mobile_app_project/lessons/lesson_page.dart';
import 'package:mobile_app_project/lessons/Lesson_Data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Japanese For Beginners',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Japanese For Beginners'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 20),
            child: Text(widget.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 175,
                  height: 175,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            LessonPage(
                              title: 'Greetings',
                              greetingsData: greetingsData,)),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 30,),
                        Text('Greetings', style: TextStyle(fontSize: 30),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 175,
                  height: 175,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('123', style: TextStyle(fontSize: 30,),),
                        Text('Numbers (1-10)',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 175,
                height: 175,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          KanaPractice(title: 'Hiragana Practice', kpNum: 1,)),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ひらがな', style: TextStyle(fontSize: 30,),),
                      Text('Hiragana', style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 175,
                height: 175,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          KanaPractice(title: 'Katakana Practice', kpNum: 2,)),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('カタカナ', style: TextStyle(fontSize: 30,),),
                      Text('Katakana', style: TextStyle(fontSize: 30),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
