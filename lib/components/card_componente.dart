import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_dados.dart';

class CardComponente extends StatelessWidget {
  String titulo;
  CardComponente({required this.titulo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dados = Provider.of<ApiDados>(context);

    return Card(
      elevation: 5,
      color: cor(dados, titulo),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 50,
            child: Center(
              child: Text(titulo),
            ),
          ),
          Material(
            shape: const CircleBorder(),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Ink(
                child: Center(
                  child: icone(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Icon icone() {
    return const Icon(Icons.favorite);
  }

  cor(ApiDados item, String titulo) {
    if (item.listaDeNomes.contains(titulo)) {
      return Colors.green;
    }
  }
}
