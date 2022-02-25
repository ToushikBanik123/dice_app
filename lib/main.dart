import 'package:flutter/material.dart';

void main() {
  {
    return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Center(child: Text('Dicee'),),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}


class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomNumber = 2;
    return SafeArea(child: Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
            onPressed: () { print('hi'); },
            child: Image.asset('images/dice$randomNumber.png'),
          ),
          ),
          Expanded(
            flex: 1,
            child:
            TextButton(
              onPressed: () { print('hi'); },
              child: Image.asset('images/dice$randomNumber.png'),
            ),
          ),
        ],
      ),
    ),
    );
  }
}