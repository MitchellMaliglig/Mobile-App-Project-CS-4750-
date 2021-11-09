import 'package:flutter/material.dart';
import 'package:mobile_app_project/references/hira_chart.dart';
import 'package:mobile_app_project/references/kata_chart.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({Key? key}) : super(key: key);
  @override
  _ReferencesPageState createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('References Page'),
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
                    MaterialPageRoute(builder: (context) => HiraganaChart()),
                  );
                },
                child: Text('Hiragana Chart (Coto Academy)')),
            OutlinedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KatakanaChart()),
                  );
                },
                child: Text('Katakana Chart (Coto Academy)')),
          ],
        ),
      ),
    );
  }
}