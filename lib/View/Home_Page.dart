import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/View/result_page.dart';
import '../View Model/GetDataProvider.dart';
import '../constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final getDataProvider = Provider.of<GetDataProvider>(context, listen: false);
    getDataProvider.getData();

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Consumer<GetDataProvider>(
          builder: (context, userController, child) {
            if (userController.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.lightGreen,
                ),
              );
            } else if (userController.hasMoreQuestions()) {
              final currentQuestion =
              userController.quizList[userController.currentQuestion];

              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Question no ${userController.currentQuestion + 1}",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: txtColor,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      currentQuestion.question,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: txtColor,
                      ),
                    ),
                    Column(
                      children: currentQuestion.options.map((option) {
                        bool isSelected = userController.selectedAnswers.contains(option);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (!isSelected) {
                                userController.selectAnswer(option);
                              }
                            },
                            child: Container(
                              width: 317,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: isSelected
                                      ? option.isCorrect
                                      ? Colors.lightGreen
                                      : Colors.red // Color for wrong answers
                                      : txtColor,
                                ),
                                color: isSelected && option.isCorrect
                                    ? Colors.lightGreen
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  option.text,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: isSelected
                                        ? Colors.white
                                        : txtColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            } else {
              return const ResultPage();
            }
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            if (getDataProvider.hasSelectedAnswer()) {
              getDataProvider
                  .saveSelectedAnswers(getDataProvider.selectedAnswers)
                  .then((_) {
                getDataProvider.nextQuestion();
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please select an answer before proceeding.'),
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const SizedBox(
            width: 124.0,
            height: 45.0,
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
