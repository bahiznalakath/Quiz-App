import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/View/starting_screen.dart';
import 'package:quiz_app/constants/colors.dart';

import '../View Model/GetDataProvider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final getDataProvider = Provider.of<GetDataProvider>(context);
    double percentage = (getDataProvider.score / getDataProvider.quizList.length) * 100;
    return Scaffold(
      backgroundColor: const Color(0xff481450),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 273,
              height: 268,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/congrats.png",
                    width: 208,
                    height: 92,
                  ),
                    Text('$percentage %',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  const Text("Quiz completed successfully..!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black, // Default text color
                        ),
                        children: [
                          TextSpan(
                            text: "You attempt ",
                          ),
                          TextSpan(
                            text: "10 Questions",
                            style: TextStyle(
                              color: Colors.red, // Set color for '10 Questions'
                            ),
                          ),
                          TextSpan(
                            text: " and \n from that ",
                          ),
                          TextSpan(
                            text: "5 answer",
                            style: TextStyle(
                              color: Colors.green, // Set color for '5 answer'
                            ),
                          ),
                          TextSpan(
                            text: " is correct.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: errorColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StartScreen()),
                  );
                },
                child:  Text("Try again..!",
                    style: TextStyle(
                      color: txtColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ))),
          )
        ],
      ),
    );
  }
}
