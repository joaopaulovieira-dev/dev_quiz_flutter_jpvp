import 'package:dev_quiz_flutter_jpvp/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({required this.title, required this.awnsers})
      : assert(
          awnsers.length == 4,
        );
}
