import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/components/listar_componentes.dart';
import 'package:starwars/components/topo_do_app..dart';
import 'package:starwars/data/api_dados.dart';

class PaginaInicial extends StatelessWidget {
  PaginaInicial({Key? key}) : super(key: key);

  late ApiDados dados;

  @override
  Widget build(BuildContext context) {
    dados = context.watch<ApiDados>();

    return SafeArea(
      child: Scaffold(
        appBar: TopoDoApp(apiDados: dados, context: context),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Builder(builder: (context) {
            return dados.listaCategoria.isEmpty
                ? const Center(
                    child: Text('Nenhum item favoritado'),
                  )
                : ListView.builder(
                    itemCount: dados.listaCategoria.length,
                    itemBuilder: (_, index) {
                      return ListarComponentes(
                          titulo: dados.listaCategoria[index]);
                    },
                  );
          }),
        ),
      ),
    );
  }
}
