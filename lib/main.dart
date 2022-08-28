import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_service.dart';
import 'package:starwars/screens/pagina_inicial.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ApiService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaginaInicial(),
    );
  }
}
