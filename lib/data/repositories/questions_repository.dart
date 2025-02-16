import 'package:quiz_game_app/data/models/list_questions_model.dart';
import 'package:quiz_game_app/data/sources/list_questions_api.dart';

class QuestionRepository {
  static final QuestionRepository _instance = QuestionRepository._();
  static ListQuestionsModel? _localDataSource;
  late final ListQuestionsApi _remoteDataSource;


  QuestionRepository._() {
    _remoteDataSource = ListQuestionsApi();
    _localDataSource = null;
  }


  factory QuestionRepository() {
    return _instance;
  }


  Future<ListQuestionsModel> getQuestions({bool forceRefresh = false}) async {
    if (_localDataSource != null && !forceRefresh) {
      print("🔹 Chargement depuis le cache");
      print("🔹 $_localDataSource");
      return _localDataSource!;
    }
    try {
      _localDataSource = await _remoteDataSource.fetchQuestions();
      return _localDataSource!;
    } catch (e) {
      throw Exception("Erreur Repository : $e");
    }
    }
}