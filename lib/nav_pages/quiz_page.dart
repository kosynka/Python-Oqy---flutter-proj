import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:learn_python/nav_pages/user_preferences.dart';
import '../widgets/app_large_text.dart';
import './quiz.dart';
import './result.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _questions = const [
    {
      'questionText': 'Q1. Flutter-ді істеген қай компания?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. Flutter деген не?',
      'answers': [
        {
          'text': 'Android бағдарлама жасайтын программалау ортасы',
          'score': -2
        },
        {'text': 'IOS бағдарлама жасайтын программалау ортасы', 'score': -2},
        {'text': 'Web бағдарлама жасайтын программалау ортасы', 'score': -2},
        {
          'text':
              'IOS, Android, Web және Windows қатар әдемі мультиплатформды бағдарлама жасайтын SDK',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Flutter қолданатын бағдарламалау тілі',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Dart бағдарламалау тілін кім ойлап тапты?',
      'answers': [
        {'text': 'Lars Bak және Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Flutter тек Web және Desktop бағдарламаларын жасауға арналған ба?',
      'answers': [
        {
          'text': 'Ия',
          'score': -2,
        },
        {'text': 'Жоқ', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Әлі де сұрақтар бар!');
    } else {
      print('Сұрақтар бітті!');
    }
  }

  final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 42.5, left: 15),
              child: Row(
                children: [
                  Icon(Icons.menu, size: 30, color: Colors.black54),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(user.imagePath)),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: 'Python Oqy'),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : Result(_totalScore, _resetQuiz),
            ),
          ],
        ),
      ),
    );
  }
}
