import 'package:flutter/material.dart';

class HiraganaChart extends StatefulWidget {
  const HiraganaChart({Key? key}) : super(key: key);

  @override
  _HiraganaChartState createState() => _HiraganaChartState();
}

class _HiraganaChartState extends State<HiraganaChart> {
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
                    child: Text('Hiragana Chart',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
              ),
              Expanded(
                  flex: 90,
                  child: InteractiveViewer(
                      child: Image.asset('assets/hiraganachart.png')))
            ],
          ),
        ),
      ),
    );
  }
}
