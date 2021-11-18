import 'package:flutter/material.dart';
import 'package:mobile_app_project/activities/kana_practice.dart';

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
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KanaPractice()),
                  );
                  },
                child: Text('Kana Practice')
            ),
          ],
        ),
      ),
    );
  }
}