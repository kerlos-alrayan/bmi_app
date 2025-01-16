import 'package:flutter/material.dart';
import 'package:quiz_app/bmi_calculate/screens/home_screen.dart';
import 'package:quiz_app/bmi_calculate/widgets/color_style.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.calculationBrain,
      required this.getResult,
      required this.getAdvice});
  final String calculationBrain;
  final String getResult;
  final String getAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kActiveCardCoulor,
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kActiveCardCoulor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          getResult,
                          style: kResultTextStyle,
                        ),
                        Text(
                          calculationBrain,
                          style: kBMITextStyle,
                        ),
                        Text(
                          getAdvice,
                          style: kBodyTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop(MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                            },
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xFFEB1555),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text(
                                'RE_CALCULATE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}