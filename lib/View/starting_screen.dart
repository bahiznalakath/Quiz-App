import 'package:flutter/material.dart';
import 'package:quiz_app/View/Home_Page.dart';

import '../constants/colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor ,
      body: Column(
        children: [
          const SizedBox(height: 250,),
          Image.asset(
            "assets/images/quiz.png",
            width: 316,
            height: 316,
          ),
         Center(
            child: SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: btnColor, padding: EdgeInsets.all(16), // Set the text color to white
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

         ),
          const Spacer(),
           Text(
              "powered by ",
               style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: cmpynaColor
              )

          ),
           Text(
            " www.artifitia.com",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: cmpynaColor
              )

          ),
        ],
      ),
    );
  }
}
