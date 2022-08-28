import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/components/card_componente.dart';
import 'package:starwars/data/api_dados.dart';

class PaginaInicial extends StatelessWidget {
  PaginaInicial({Key? key}) : super(key: key);
  late ApiDados dados;

  @override
  Widget build(BuildContext context) {
    dados = context.watch<ApiDados>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('StarWars'),
        ),
      ),
      body: SizedBox(
        child: Builder(builder: (context) {
          return ListView.builder(
            itemCount: dados.listaDeNomes.length,
            itemBuilder: (_, index) {
              return CardComponente(titulo: dados.listaDeNomes[index]);
            },
          );
        }),
      ),
    );
  }
}
