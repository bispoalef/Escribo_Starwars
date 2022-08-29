import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars/data/api_dados.dart';
import 'package:starwars/data/sqflite.dart';

class ListarComponentes extends StatelessWidget {
  String titulo;
  ListarComponentes({required this.titulo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dados = Provider.of<ApiDados>(context);

    return Column(
      children: [
        Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: cor(dados, titulo),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                    titulo,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Material(
                shape: const CircleBorder(),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    if (!dados.listaDeFavoritos.contains(titulo)) {
                      dados.listaDeFavoritos.add(titulo);
                      Sqflte.instance.add(titulo);
                      dados.notifyListeners();
                    } else {
                      (dados.listaDeFavoritos.remove(titulo));
                      Sqflte.instance.add(titulo);
                      dados.notifyListeners();
                    }
                  },
                  child: Ink(
                    decoration: BoxDecoration(color: cor(dados, titulo)),
                    child: Center(
                      child: icone(dados, titulo),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }

  Icon icone(ApiDados dados, String title) {
    if (dados.listaDeFavoritos.contains(title)) {
      return Icon(
        Icons.favorite,
        color: Colors.blueGrey.shade400,
      );
    } else {
      return const Icon(Icons.favorite_border);
    }
  }

  cor(ApiDados item, String titulo) {
    if (item.listaDeNomes.contains(titulo)) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
