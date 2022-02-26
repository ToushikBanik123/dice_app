import 'package:flutter/material.dart';

void main() {
  {
    return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Center(child: Text('Dicee'),),
            backgroundColor: Colors.blue,
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumber=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  randomNumber = 6;
                });
                },
              child: Image.asset('images/dice$randomNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child:
            TextButton(
              onPressed: (){
                setState(() {
                  randomNumber = 2;
                });
              },
              child: Image.asset('images/dice$randomNumber.png'),
            ),
          ),
        ],
      ),
    ),
    );
  }

}