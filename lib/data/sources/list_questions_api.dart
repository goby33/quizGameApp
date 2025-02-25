import 'package:quiz_game_app/config/constants.dart';
import 'package:quiz_game_app/data/models/list_questions_model.dart';
import 'package:dio/dio.dart';

class ListQuestionsApi {
  static final ListQuestionsApi _instanceQuestionApi = ListQuestionsApi._();
  final Dio _dio;

  ListQuestionsApi._() : _dio = Dio();

  factory ListQuestionsApi() {
    return _instanceQuestionApi;
  }

  Future<ListQuestionsModel?> fetchQuestions() async {
    var responseApi = await _dio.post(URL_API);
    if (responseApi.statusCode == 200) {
      return ListQuestionsModel.fromJson(responseApi.data);
    } else {
      return null;
    }
  }
}