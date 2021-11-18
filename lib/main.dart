import 'package:flutter/material.dart';
import 'package:mobile_app_project/Lessons_Page.dart';
import 'package:mobile_app_project/References_Page.dart';
import 'Activities_Page.dart';

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
      home: MyHomePage(title: 'Home Page'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: IntrinsicWidth(
          stepWidth: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitiesPage()),
                    );
                  },
                  child:
                  Text('Activities')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReferencesPage()),
                    );
                  },
                  child:
                  Text('References')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LessonsPage()),
                    );
                  },
                  child:
                  Text('Lessons')
              )
            ],
          ),
        ),
      ),
    );
  }
}
