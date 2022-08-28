import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_dados.dart';
import 'package:starwars/screens/carregar_dados.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ApiDados(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarregarDados(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
