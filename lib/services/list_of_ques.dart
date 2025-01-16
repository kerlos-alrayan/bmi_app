import 'package:quiz_app/models/questions.dart';

class QuestionBank{
  int questionAnswer = 0;
  final List<Question> questionBank = [
    Question('Some cats are actually allergic to humans', 'True', ['True', 'False', 'Maybe'],),
    Question('You can lead a cow down stairs but not up stairs.', 'False',  ['True', 'False', 'Unknown'],),
    Question('Approximately one quarter of human bones are in the feet.', 'True', ['True', 'False', 'About 50%'],),
    Question('A slug\'s blood is green.', 'Green',[ 'Red', 'Green', 'Blue'],),
    Question('Buzz Aldrin\'s mother\'s maiden name was "Moon".', 'Moon', ['Sun', 'Moon', 'Star'],),
    // Question('It is illegal to pee in the Ocean in Portugal.', 'True'),
    // Question('No piece of square dry paper can be folded in half more than 7 times.', 'False'),
    // Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral.', 'True'),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', 'Blue Whale',['Blue Whale', 'African Elephant', 'Tiger'],),
    Question('The total surface area of two human lungs is approximately 70 square metres.', '70 square metres',['50 square metres', '70 square metres', '90 square metres'],),
    Question('Google was originally called "Backrub".', 'Backrub',     ['Backrub', 'Searchify', 'Alphabet'],),
    // Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', 'True'),
    // Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', 'True'),
  ];


  // final List<List<String>> optionsList = [
  //
  //   ['True', 'False', 'About 50%'],
  //   ['Red', 'Green', 'Blue'],
  //   ['Sun', 'Moon', 'Star'],
  //   ['True', 'False', 'Depends on the place'],
  //   ['True', 'False', 'It depends on size'],
  //   ['True', 'False', 'Only for officials'],
  //   ['Blue Whale', 'African Elephant', 'Tiger'],
  //   ['50 square metres', '70 square metres', '90 square metres'],
  //   ['Backrub', 'Searchify', 'Alphabet'],
  //   ['True', 'False', 'It depends on the dog'],
  //   ['True', 'False', 'Only with permission'],
  // ];


  void nextQuestion(){
    if(questionAnswer < questionBank.length-1){
      questionAnswer++;
    }
  }

  String getQuestionText(){
    return questionBank[questionAnswer].questionText;
  }

  String getCorrectAnswer(){
    return questionBank[questionAnswer].questionAnswer;
  }

  bool isFinished(){
    if(questionAnswer >= questionBank.length-1){ // counter >= 12
      print('True');
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    questionAnswer = 0;
  }

  List<String> getOptionsList(){
    return questionBank[questionAnswer].optionsList;
  }
}