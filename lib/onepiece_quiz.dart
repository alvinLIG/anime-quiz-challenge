import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Portgas D. Rouge\'s pregnancy last for Twenty months?', true),
    Question('Bounty for "Rookie" Rockstar is 100,000,000 Beli', false),
    Question('Morgan wrote about a "Fifth Emperor"', true),
    Question('X drake is Zoan type devil fruit.', true),
    Question(
        'Robin\'s bounty increase by 50,000,000 after the Enies Lobby incident',
        false),
    Question('In Mock Town, Bellamy lose to Luffy?', true),
    Question('The Bara Bara no Mi will let you fly across the ocean', false),
    Question('Woop Slap is the name of the mayor of Luffy\'s hometown', true),
    Question('Aisa is the only Shandia able to use Mantra?', true),
    Question('150,000 cost per view for Nami seeing her naked', false),
    Question('Admiral is the highest position within the Marines?".', false),
    Question('There are 8 routes start from Reverse Mountain?', false),
    Question('Mr. 3 took out Brogy the giant with explosives?', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

  //TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
}
