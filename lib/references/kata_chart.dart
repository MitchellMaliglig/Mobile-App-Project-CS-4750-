import 'package:flutter/material.dart';

class KatakanaChart extends StatefulWidget {
  const KatakanaChart({Key? key}) : super(key: key);

  @override
  _KatakanaChartState createState() => _KatakanaChartState();
}

class _KatakanaChartState extends State<KatakanaChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Text('Katakana Chart',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                  flex: 90,
                  child: InteractiveViewer(
                      child: Image.asset('assets/katakanachart.png')))
            ],
          ),
        ),
      ),
    );
  }
}
