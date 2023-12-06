import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'Model/QuizModel.dart';
import 'View Model/GetDataProvider.dart';
import 'View/starting_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(QuizModelAdapter());
  Hive.registerAdapter(OptionAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetDataProvider()),
      ],
      child: const MaterialApp(
        title: 'Quiz App',
        home: StartScreen(),
      ),
    );
  }
}
