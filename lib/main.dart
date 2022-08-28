import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/requisicao_api.dart';
import 'package:starwars/screens/carregar_dados.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => RequisicaoApi(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarregarDados(),
    );
  }
}
