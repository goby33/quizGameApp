import 'package:freezed_annotation/freezed_annotation.dart';


part 'question_model.freezed.dart';
part 'question_model.g.dart';


@freezed
class QuestionModel with _$QuestionModel {
  /// {@macro question_model}
  const factory QuestionModel({
    required String category,
    required String type,
    required String difficulty,
    required String question,
    required String correct_answer,
    required List<String> incorrect_answers,
  }) = _QuestionModel;

  /// Creates a QuestionModel from Json map
  factory QuestionModel.fromJson(Map<String, dynamic> data) => _$QuestionModelFromJson(data);
}