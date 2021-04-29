import 'package:dev_quiz_flutter_jpvp/core/app_images.dart';
import 'package:dev_quiz_flutter_jpvp/home/home_state.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/awnser_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/question_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/quiz_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: 'joaopaulovieira.dev',
      photoUrl: 'https://avatars.githubusercontent.com/u/80857646?v=4',
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
          title: 'NLW 5 - Flutter',
          questions: [
            QuestionModel(
              title: 'Está curtindo o Flutter?',
              awnsers: [
                AwnserModel(
                  title: 'Amando o Flutter',
                ),
                AwnserModel(
                  title: 'Muito TOP',
                ),
                AwnserModel(
                  title: 'Estou curtindo',
                ),
                AwnserModel(
                  title: 'Show de bola',
                  isRight: true,
                ),
              ],
            ),
            QuestionModel(
              title: 'Está curtindo o Flutter?',
              awnsers: [
                AwnserModel(
                  title: 'Amando o Flutter',
                ),
                AwnserModel(
                  title: 'Muito TOP',
                ),
                AwnserModel(
                  title: 'Estou curtindo',
                ),
                AwnserModel(
                  title: 'Show de bola',
                  isRight: true,
                ),
              ],
            ),
          ],
          imagem: AppImages.blocks,
          level: Level.facil)
    ];
    state = HomeState.success;
  }
}
