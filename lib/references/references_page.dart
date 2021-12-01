import 'package:flutter/material.dart';
import 'package:mobile_app_project/references/AdvancedKana.dart';
import 'package:mobile_app_project/references/BasicKana.dart';
import 'package:mobile_app_project/references/jp_text_intro.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  _ReferencesPageState createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(fontSize:30),),
        backgroundColor: widget.color,
      ),
      body: Center(
        child: Container(
          width: 200,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: widget.color,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            JPTextIntro(
                              title: 'Intro to JP Text',
                              color: widget.color,
                            )),
                      );
                    },
                    child: Text('Intro to JP Text')
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: widget.color,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            BasicKana(
                              title: 'Basic Kana',
                              color: widget.color,
                            )),
                      );
                    },
                    child: Text('Basic Kana')
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: widget.color,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            AdvancedKana(
                              title: 'Advanced Kana',
                              color: widget.color,
                            )),
                      );
                    },
                    child: Text('Advanced Kana')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}