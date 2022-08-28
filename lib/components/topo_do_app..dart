import 'package:flutter/material.dart';
import 'package:starwars/data/api_dados.dart';

class TopoDoApp extends PreferredSize {
  final ApiDados apiDados;
  final BuildContext context;

  TopoDoApp({required this.apiDados, required this.context, Key? key})
      : super(
            key: key,
            preferredSize: const Size.fromHeight(150),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Site Oficial'))
                    ],
                  )
                ],
              ),
            ));
}
