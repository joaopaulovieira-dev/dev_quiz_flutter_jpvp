import 'package:dev_quiz_flutter_jpvp/home/home_repository.dart';
import 'package:dev_quiz_flutter_jpvp/home/home_state.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/quiz_model.dart';
import 'package:dev_quiz_flutter_jpvp/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
