import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const containerBC = Color(0xff1d1e33);
const bottomCC = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: containerBC)),
                  Expanded(child: ReusableCard(colour: containerBC)),
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: containerBC)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: containerBC)),
                  Expanded(child: ReusableCard(colour: containerBC)),
                ],
              ),
            ),
            Container(
              color: bottomCC,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
