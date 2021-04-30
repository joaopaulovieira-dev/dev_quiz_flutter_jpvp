import 'package:dev_quiz_flutter_jpvp/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz_flutter_jpvp/challenge/widgets/question_indicator/questiona_indicator_widget.dart';
import 'package:dev_quiz_flutter_jpvp/challenge/widgets/quiz/quiz_widiget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: 'O que o Flutter faz em sua totalidade?',
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: NextButtonWidget.white(label: 'Pular')),
            Expanded(child: NextButtonWidget.green(label: 'Confirmar')),
          ],
        ),
      ),
    );
  }
}
