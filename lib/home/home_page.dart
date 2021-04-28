import 'package:dev_quiz_flutter_jpvp/home/home_controller.dart';
import 'package:dev_quiz_flutter_jpvp/home/widgets/appbar/app_bar_widget.dart';
import 'package:dev_quiz_flutter_jpvp/home/widgets/level_button/level_button_widget.dart';
import 'package:dev_quiz_flutter_jpvp/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        user: controller.user!,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: 'Fácil',
                ),
                LevelButtonWidget(
                  label: 'Médio',
                ),
                LevelButtonWidget(
                  label: 'Difícil',
                ),
                LevelButtonWidget(
                  label: 'Perito',
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                children: controller.quizzes!
                    .map(
                      (e) => QuizCardWidget(
                        title: e.title,
                        completed:
                            '${e.questionAnswered}/${e.questions.length}',
                      ),
                      //TODO: Aula 03 00:47:00
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
