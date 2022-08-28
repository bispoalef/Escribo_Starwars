import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_dados.dart';

class btn extends StatelessWidget {
  final String categoria;
  const btn({
    required this.categoria,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ApiDados dados;
    dados = context.watch<ApiDados>();

    return ElevatedButton(
        onPressed: dados.categoriaEscolhida == categoria
            ? null
            : () => {dados.categoria(categoria)},
        style: ElevatedButton.styleFrom(
          elevation: 5,
          primary: Colors.black54,
        ),
        child: Text(categoria));
  }
}
