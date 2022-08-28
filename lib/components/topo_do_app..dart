import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:starwars/data/api_dados.dart';
import 'package:starwars/screens/paginas/pagina_fluttermoj.dart';
import 'package:starwars/screens/paginas/pagina_inicial.dart';
import 'package:starwars/screens/paginas/pagina_webview.dart';

import 'botao_topo.dart';

class TopoDoApp extends PreferredSize {
  final ApiDados? apiDados;
  final BuildContext context;

  TopoDoApp({required this.apiDados, required this.context, Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(200),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (context.widget.toString() == 'PaginaInicial') {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PaginaWebView()));
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaginaInicial()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          primary: Colors.black54,
                        ),
                        child: const Text('Site Oficial'),
                      ),
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ElevatedButton(
                          onPressed: () {
                            if (context.widget.toString() == 'PaginaInicial') {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaginaFlutterMoji()));
                            } else {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaginaInicial()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: const CircleBorder(),
                          ),
                          child: FluttermojiCircleAvatar(radius: 150),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    btn(categoria: 'Filme'),
                    btn(categoria: 'Personagem'),
                    btn(categoria: 'Favorito'),
                  ],
                )
              ],
            ),
          ),
        );
}
