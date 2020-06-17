import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';


/*void main() {
 runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>
{

  var _questions = [
    {'questionText': "What\'s is your fvt colors?",
     'answers':['Red','Green','Blue','Black']
    },
    {'questionText': "What\'s is your fvt Animal?",
      'answers':['Fox','Cat','Monkey','Cow']
    },
    {'questionText': "What\'s is your fvt instructor?",
      'answers':['Max','Max']
    }
  ];
  var questionIndex = 0;

  void _answerQuestion()
  {
      setState(() {
      questionIndex = questionIndex +1;
    });

    print(questionIndex);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Question(_questions.elementAt(questionIndex)['questionText']),

            ...( _questions[questionIndex]['answers'] as List<String>).map(
                (answer){
                  return Answer(_answerQuestion,answer);
                }
            ).toList()


          ],
        ),
      ),
    );
  }
}
