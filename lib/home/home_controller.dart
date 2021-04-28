import 'package:dev_quiz_flutter_jpvp/core/app_images.dart';
import 'package:dev_quiz_flutter_jpvp/home/home_state.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/awnser_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/question_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/quiz_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/user_model.dart';

class HomeController {
  HomeState? state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
        name: 'joaopaulovieira.dev',
        photoUrl: 'https://avatars.githubusercontent.com/u/80857646?v=4');
  }

  void getQuizzes() {
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
          ],
          imagem: AppImages.blocks,
          level: Level.facil)
    ];
  }
}
