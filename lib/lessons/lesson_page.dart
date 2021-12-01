import 'package:flutter/material.dart';
import 'package:mobile_app_project/lessons/Lesson_Data.dart';
import 'package:mobile_app_project/jp_tools.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key? key, required this.title, required this.lessonData,
    required this.color}) : super(key: key);

  final String title;
  final List<LessonData> lessonData;
  final Color color;

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(fontSize:30),),
        backgroundColor: widget.color,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:widget.lessonData.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 40, left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text((index + 1).toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 40,
                            child: Column(
                              children: [
                                Text(kana.toHiragana(widget.lessonData[index].romaji.replaceAll(' ', '')),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                ),),
                                Text(widget.lessonData[index].romaji,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 15,
                              child: IconButton(
                                icon: Icon(Icons.volume_up, size: 30,),
                                onPressed: (){
                                  speak(kana.toHiragana(widget.lessonData[index].romaji.replaceAll(' ', '')));
                                },
                              ),
                          ),
                          Expanded(
                            flex: 35,
                            child: Text(widget.lessonData[index].english,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
