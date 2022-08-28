import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:starwars/components/topo_do_app..dart';

class PaginaFlutterMoji extends StatelessWidget {
  const PaginaFlutterMoji({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopoDoApp(apiDados: null, context: context),
      body: Container(
        child: Column(children: [
          SizedBox(
            child: FluttermojiCircleAvatar(),
          ),
          FluttermojiCustomizer(),
        ]),
      ),
    );
  }
}
