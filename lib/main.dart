import 'package:firstapp/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats\'s my favourite color?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 0},
        {'text': 'Red', 'score': 0},
      ],
    },
    {
      'questionText': 'Whats\'s my favourite Fruit?',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Grapes', 'score': 0},
        {'text': 'Guava', 'score': 0},
        {'text': 'Mango', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s my favourite Actor?',
      'answers': [
        {'text': 'Salman Khan', 'score': 0},
        {'text': 'Sushant S Rajput', 'score': 0},
        {'text': 'Akshay Kumar', 'score': 10},
        {'text': 'Shahrukh Khan', 'score': 0},
      ],
    },
    {
      'questionText': 'Who\'s my favourite Actress?',
      'answers': [
        {'text': 'Radhika Apte', 'score': 10},
        {'text': 'Kangana Ranaut', 'score': 0},
        {'text': 'Tapse Pannu', 'score': 0},
        {'text': 'Richa Chadhha', 'score': 0},
      ],
    },
    {
      'questionText': 'Whats\'s my favourite web-series ?',
      'answers': [
        {'text': 'Sacred Games', 'score': 0},
        {'text': 'Mirzapur', 'score': 10},
        {'text': 'Game of Thrones', 'score': 0},
        {'text': 'Kota Factory', 'score': 0},
      ],
    },
    {
      'questionText': 'Whats\'s my favourite Hobby?',
      'answers': [
        {'text': 'Singing', 'score': 0},
        {'text': 'Coding', 'score': 0},
        {'text': 'Drawing', 'score': 0},
        {'text': 'Poetry', 'score': 10},
      ],
    },
    {
      'questionText': 'Whats\'s my favourite game?',
      'answers': [
        {'text': 'Freefire', 'score': 0},
        {'text': 'Pubg', 'score': 10},
        {'text': 'Counter Strike', 'score': 0},
        {'text': 'Clash of clans', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s my favourite Car?',
      'answers': [
        {'text': 'Jaguar', 'score': 0},
        {'text': 'Bugatti', 'score': 0},
        {'text': 'Lamborghini', 'score': 0},
        {'text': 'Mercedes', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s my favourite Bike?',
      'answers': [
        {'text': 'Bullet', 'score': 0},
        {'text': 'R15', 'score': 0},
        {'text': 'Ducati', 'score': 10},
        {'text': 'Harley Davidson', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    //var aBool = true;
    //aBool = false;
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
