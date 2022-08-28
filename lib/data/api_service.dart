import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  static const url_base = 'https://swapi.dev/api/';

  List<dynamic> listaDeNomes = [];

  carregarDados() async {
    await _buscarNomes();
  }

  _buscarNomes() async {
    var url = Uri.parse('$url_base/people');

    var response = await http.get(url);

    final jsonResponse = jsonDecode(response.body);
    final List<dynamic> lista = jsonResponse['results'];
    for (var element in lista) {
      listaDeNomes.add(element['name']);
    }
  }
}
