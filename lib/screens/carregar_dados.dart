import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_dados.dart';
import 'package:starwars/screens/paginas/pagina_inicial.dart';

class CarregarDados extends StatelessWidget {
  CarregarDados({Key? key}) : super(key: key);
  late ApiDados dados;
  @override
  Widget build(BuildContext context) {
    dados = context.watch<ApiDados>();
    dados.carregarDados().then(
          (_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PaginaInicial(),
            ),
          ),
        );

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
