import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'Керемет жауаптар!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Жарайсыз!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'Сіз жақсарып келе жатырсыз!';
    } else if (resultScore >= 1) {
      resultText = 'Сізге тағы да тырысу қажет!';
    } else {
      resultText = 'Өкінішке орай барлық жауап қате(';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Ұпай - ' '$resultScore',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00E676)),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          FlatButton(
            child: Text(
              'Тестті қайта бастау!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
