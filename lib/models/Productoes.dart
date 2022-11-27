// To parse this JSON data, do
//
//     final productoes = productoesFromJson(jsonString);

import 'dart:convert';

List<Productoes> productoesFromJson(String str) =>
    List<Productoes>.from(json.decode(str).map((x) => Productoes.fromJson(x)));

String productoesToJson(List<Productoes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Productoes {
  Productoes({
    this.codigoProducto,
    this.nombreProducto,
    this.existencias,
    this.bodegaUbicacion,
  });

  int? codigoProducto;
  String? nombreProducto;
  int? existencias;
  String? bodegaUbicacion;

  factory Productoes.fromJson(Map<String, dynamic> json) => Productoes(
        codigoProducto: json["CodigoProducto"],
        nombreProducto: json["NombreProducto"],
        existencias: json["Existencias"],
        bodegaUbicacion: json["BodegaUbicacion"],
      );

  Map<String, dynamic> toJson() => {
        "CodigoProducto": codigoProducto,
        "NombreProducto": nombreProducto,
        "Existencias": existencias,
        "BodegaUbicacion": bodegaUbicacion,
      };
}
