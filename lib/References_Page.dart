import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                onPressed: (){},
                child: Text('Hiragana Chart')),
            OutlinedButton(
                onPressed: (){},
                child: Text('Katakana Chart')),
          ],
        ),
      ),
    );
  }
}