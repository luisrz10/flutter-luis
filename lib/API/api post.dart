import 'dart:convert';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<fotos>> Buscatienda() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");

  final response = await http.get(url);

  return compute(pasaraListarusuario, response.body);
}

////////////// Pasar ListarUsuario
List<fotos> pasaraListarusuario(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();

  return pasar.map<fotos>((json) => fotos.fromJson(json)).toList();
}
////////////////

class fotos {
  final albumId;
  final id;
  final title;
  final url;
  final thumbnailUrl;

  fotos({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory fotos.fromJson(Map<String, dynamic> json) {
    return fotos(
      albumId: json['userId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
