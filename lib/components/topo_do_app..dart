import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:starwars/data/api_dados.dart';

import 'botao_topo.dart';

class TopoDoApp extends PreferredSize {
  final ApiDados apiDados;
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
                        onPressed: () {},
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
                          onPressed: () {},
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
