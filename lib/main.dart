import 'package:flutter/material.dart';
import 'package:mobile_app_project/references/references_page.dart';
import 'package:mobile_app_project/lessons/kana_practice.dart';
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
      appBar: AppBar(
        title: Center(
          child: Text(widget.title,
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.purple[700],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 175,
                  height: 175,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            LessonPage(
                              title: 'Greetings',
                              lessonData: greetingsData,
                                color: (Colors.green[700])!
                            )
                        ),
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
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[700],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            LessonPage(
                              title: 'Numbers',
                              lessonData: numbersData,
                              color: (Colors.blue[700])!,
                            )
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('123', style: TextStyle(fontSize: 30,),),
                        Text('Numbers',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
              ],
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
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow[800],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            KanaPractice(
                              title: 'Hiragana Practice',
                              kpNum: 1,
                              color: (Colors.yellow[800])!,
                            )),
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
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[700],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            KanaPractice(
                              title: 'Katakana Practice',
                              kpNum: 2,
                              color: (Colors.orange[700])!,
                            )),
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
          ),
          SizedBox(
            width: 175,
            height: 175,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red[700],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ReferencesPage(
                        title: 'Reference Page',
                        color: (Colors.red[700])!,
                      )),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book, size: 30,),
                  Text('Reference', style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
