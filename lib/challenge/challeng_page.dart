import 'package:flutter/material.dart';

import 'package:dev_quiz_flutter_jpvp/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz_flutter_jpvp/challenge/widgets/question_indicator/questiona_indicator_widget.dart';
import 'package:dev_quiz_flutter_jpvp/challenge/widgets/quiz/quiz_widiget.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/question_model.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              QuestionIndicatorWidget(),
            ],
          ),
        ),
      ),
      body: QuizWidget(
        question: widget.questions[0],
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: NextButtonWidget.white(
                  label: 'Pular',
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: NextButtonWidget.green(
                  label: 'Confirmar',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
