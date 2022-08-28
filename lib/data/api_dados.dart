import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiDados extends ChangeNotifier {
  List<dynamic> listaDeNomes = [];
  List<dynamic> listaDeFilmes = [];
  List<dynamic> listaDeFavoritos = [];
  List<dynamic> listaCategoria = [];
  String? categoriaEscolhida;

  carregarDados() async {
    await _buscarNaApi('people', 'name', listaDeNomes);
    await _buscarNaApi('films', 'title', listaDeFilmes);
  }

  _buscarNaApi(String tipo, categoria, List tipoDeLista) async {
    var url = Uri.parse('https://swapi.dev/api/$tipo');

    var response = await http.get(url);

    final jsonResponse = jsonDecode(response.body);
    final List<dynamic> lista = jsonResponse['results'];
    for (var element in lista) {
      tipoDeLista.add(element[categoria]);
    }
  }

  void categoria(String categoria) {
    switch (categoria) {
      case 'Filme':
        listaCategoria = listaDeFilmes;
        categoriaEscolhida = categoria;
        notifyListeners();
        break;
      case 'Personagem':
        listaCategoria = listaDeNomes;
        categoriaEscolhida = categoria;
        notifyListeners();
        break;
      case 'Favorito':
        listaCategoria = listaDeFavoritos;
        categoriaEscolhida = categoria;
        notifyListeners();
        break;
      default:
        notifyListeners();
    }
  }
}
