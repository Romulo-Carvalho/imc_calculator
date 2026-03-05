import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: containerCreator(),
                  ),
                  Expanded(
                    child: containerCreator(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: containerCreator(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: containerCreator(),
                  ),
                  Expanded(
                    child: containerCreator(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget containerCreator(){
  return Container(
    margin: EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xff1d1e33),
    ),
  );
}
