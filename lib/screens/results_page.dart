import 'package:flutter/material.dart';
import 'package:imc_calculator/components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.imcResult, required this.text, required this.interpretation});

  final String imcResult;
  final String text;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IMC CALCULATOR'), centerTitle: true),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.bottomLeft,
                child: Text('Your result', style: kYourResultText),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(text.toUpperCase(), style: kResultWeightText),
                      Text(imcResult, style: kResultNumber),
                      Text(
                        interpretation,
                        style: kLabelTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'Re-calculate',
              onTap: () {
                Navigator.pop(context, '/inputPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
