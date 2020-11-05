import 'package:flutter/material.dart';
import 'package:minhavoz/Screens/Welcome/welcome_screen.dart';
import 'package:minhavoz/constants.dart';


void main() {
  runApp(MinhaVoz());
}

class MinhaVoz extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha Voz',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
