import 'package:flutter/material.dart';
class KanaPractice extends StatefulWidget {
  const KanaPractice({Key? key}) : super(key: key);

  @override
  _KanaPracticeState createState() => _KanaPracticeState();
}

class _KanaPracticeState extends State<KanaPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: (){},
                ),
                Expanded(
                  flex: 5,
                  child: Center(
                    //    margin: EdgeInsets.only(left: 40),
                      child:
                      Text('Kana Practice',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          Expanded(
            flex: 50,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 5),
                    child: Text('すし',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Sushi',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
          ),

          Expanded(
            flex: 40,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 15),
                      width: 200,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text('Show Answer')
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: 200,
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Another Word')
                    ),
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}
