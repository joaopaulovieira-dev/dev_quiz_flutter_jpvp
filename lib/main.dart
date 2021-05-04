import 'package:flutter/material.dart';

import 'core/app_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev Quiz Flutter',
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        buttonColor: Colors.green,
      ),
      home: AppWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//TODO: Desafio - Alterar a cor de splash do botão "Pular" para verde (pois atualmente esta azul).
//TODO: Aula 04 - 00:50:00
