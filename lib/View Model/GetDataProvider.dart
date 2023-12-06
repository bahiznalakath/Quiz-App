import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import '../Model/QuizModel.dart';

class GetDataProvider extends ChangeNotifier {
  static const apiUrl = 'https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz';
  List<QuizModel> _quizList = [];
  bool _isLoading = true;
  final List<Option> _selectedAnswers = [];
  int _score = 0;

  List<QuizModel> get quizList => List.unmodifiable(_quizList);

  bool get isLoading => _isLoading;

  int get currentQuestion => _selectedAnswers.length;

  List<Option> get selectedAnswers => List.unmodifiable(_selectedAnswers);

  int get score => _score;

  final Dio _dio = Dio();

  Future<void> getData() async {
    try {
      final response = await _dio.get(apiUrl);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        _quizList = data
            .map((json) => QuizModel.fromJson(json as Map<String, dynamic>))
            .toList();
        await saveDataLocally(_quizList);
        _isLoading = false;
        notifyListeners();
      } else {
        throw Exception(
            'Error occurred while loading data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
      throw Exception('Error occurred while loading data: $error');
    }
  }

  Future<void> saveDataLocally(List<QuizModel> quizzes) async {
    try {
      final box = await Hive.openBox('quiz_box');
      await box.put('quizzes', quizzes);
    } catch (error) {
      print('Error saving data locally: $error');
    }
  }

  Future<List<QuizModel>> getLocalData() async {
    try {
      final box = await Hive.openBox('quiz_box');
      final List<QuizModel> quizzes =
          box.get('quizzes', defaultValue: []) ?? [];
      return quizzes;
    } catch (error) {
      print('Error: $error');
      return [];
    }
  }

  void selectAnswer(Option option) {
    _selectedAnswers.add(option);
    if (option.isCorrect) {
      _score++;
    }

    saveSelectedAnswers(_selectedAnswers);
    notifyListeners();
  }

  void nextQuestion() {
    if (currentQuestion < quizList.length - 1) {
      // Move to the next question if available
      notifyListeners();
    } else {
      // Optionally, handle the case when there are no more questions
      print("No more questions");
    }
  }

  Color getOptionColor(Option option) {
    return Colors.white;
  }

  bool hasSelectedAnswer() {
    return _selectedAnswers.isNotEmpty;
  }

  bool hasMoreQuestions() {
    return currentQuestion < quizList.length;
  }

  void calculateScore() {
    _score = _selectedAnswers.where((answer) => answer.isCorrect).length;
  }

  void moveToNextQuestion() {
    calculateScore();
    // Add logic for moving to the next question if needed
  }

  Future<void> saveSelectedAnswers(List<Option> selectedAnswers) async {
    calculateScore();
    // Add logic for saving selected answers if needed
  }
}
