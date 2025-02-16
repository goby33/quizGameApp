import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_game_app/data/models/question_model.dart';

part 'list_questions_model.freezed.dart';
part 'list_questions_model.g.dart';


@freezed
class ListQuestionsModel with _$ListQuestionsModel {
  /// {@macro list_questions_model}
  const factory ListQuestionsModel({
    required List<QuestionModel> results,
  }) = _ListQuestionsModel;

  /// Creates a ListQuestionsModel from Json map
  factory ListQuestionsModel.fromJson(Map<String, dynamic> data) =>
      _$ListQuestionsModelFromJson(data);
}

