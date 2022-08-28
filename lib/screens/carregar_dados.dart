import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/requisicao_api.dart';
import 'package:starwars/screens/paginas/pagina_inicial.dart';

class CarregarDados extends StatelessWidget {
   CarregarDados({Key? key}) : super(key: key);
  late RequisicaoApi dados;
  @override
  Widget build(BuildContext context) {
    dados = context.watch<RequisicaoApi>();
    dados.carregarDados().then(
          (_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const PaginaInicial(),
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
