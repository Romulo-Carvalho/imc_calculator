import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  Expanded(
                    child: ReusableCard(
                      colour: containerBC,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: containerBC,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: containerBC,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: containerBC,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: containerBC,
                    ),
                  ),
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
  const ReusableCard({
    super.key,
    required this.colour,
    this.cardChild,
  });

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: cardChild,
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.text});

  final FaIconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 15.0),
        FaIcon(icon, size: 80.0),
        Text(text, style: TextStyle(fontSize: 18.0, color: Colors.white)),
      ],
    );
  }
}
