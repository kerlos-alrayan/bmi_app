import 'package:flutter/material.dart';
import 'package:quiz_app/bmi_calculate/screens/home_screen.dart';
import 'package:quiz_app/services/list_of_ques.dart';
import 'package:quiz_app/presentation/screens/hospitale_task.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class MainQuiz extends StatelessWidget {
  const MainQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: QuizScreen(),
      )),
    );
  }
}

QuestionBank quizBrain = QuestionBank();

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];
  int correctAnswers = 0;

  void resetCoAndWrAnswers() {
    correctAnswers = 0;
  }

  void checkAnswer(String userAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished😊',
          desc:
              'You\'ve reached the end of the quiz and your correct answers is $correctAnswers/${scoreKeeper.length}',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
        correctAnswers = 0;
      } else {
        if (userAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          correctAnswers++;
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 20,
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemCount: quizBrain.getOptionsList().length,
              itemBuilder: (BuildContext context, int index) {
                final listItem = quizBrain.getOptionsList()[index].toString();
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      checkAnswer(listItem);
                    },
                    child: Text(
                      listItem,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
