import 'package:flutter/material.dart';
import 'package:learner_app/screens/get_start1.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted1(),
    );
  }
}
