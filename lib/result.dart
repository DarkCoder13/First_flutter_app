import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore >= 80) {
      resultText = 'Superb You Know Krishna very well';
    } else if (resultScore >= 40 && resultScore < 80) {
      resultText = 'You know me but not that much..hahahah';
    } else {
      resultText = 'You know me a little bit';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber[200],
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: resetHandler,
              child: Text('Retake Quiz'),
              textColor: Colors.white,
              padding: const EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}
