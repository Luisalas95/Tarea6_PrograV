// To parse this JSON data, do
//
//     final loginUsuario = loginUsuarioFromJson(jsonString);

import 'dart:convert';

List<LoginUsuario> loginUsuarioFromJson(String str) => List<LoginUsuario>.from(
    json.decode(str).map((x) => LoginUsuario.fromJson(x)));

String loginUsuarioToJson(List<LoginUsuario> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginUsuario {
  LoginUsuario({
    this.identificacion,
    this.nombre,
    this.apellidos,
    this.contrasea,
    this.tokens,
  });

  String? identificacion;
  String? nombre;
  String? apellidos;
  String? contrasea;
  PurpleTokens? tokens;

  factory LoginUsuario.fromJson(Map<String, dynamic> json) => LoginUsuario(
        identificacion: json["Identificacion"],
        nombre: json["Nombre"],
        apellidos: json["Apellidos"],
        contrasea: json["Contraseña"],
        tokens: PurpleTokens.fromJson(json["Tokens"]),
      );

  Map<String, dynamic> toJson() => {
        "Identificacion": identificacion,
        "Nombre": nombre,
        "Apellidos": apellidos,
        "Contraseña": contrasea,
        "Tokens": tokens?.toJson(),
      };
}

class PurpleTokens {
  PurpleTokens({
    this.token,
    this.periodoValidesMinutos,
    this.idUsuario,
    this.loginUsuario,
  });

  String? token;
  String? periodoValidesMinutos;
  String? idUsuario;
  LoginUsuarioClass? loginUsuario;

  factory PurpleTokens.fromJson(Map<String, dynamic> json) => PurpleTokens(
        token: json["Token"],
        periodoValidesMinutos: json["Periodo_Valides_Minutos"],
        idUsuario: json["ID_Usuario"],
        loginUsuario: LoginUsuarioClass.fromJson(json["LoginUsuario"]),
      );

  Map<String, dynamic> toJson() => {
        "Token": token,
        "Periodo_Valides_Minutos": periodoValidesMinutos,
        "ID_Usuario": idUsuario,
        "LoginUsuario": loginUsuario?.toJson(),
      };
}

class LoginUsuarioClass {
  LoginUsuarioClass({
    this.identificacion,
    this.nombre,
    this.apellidos,
    this.contrasea,
    this.tokens,
  });

  String? identificacion;
  String? nombre;
  String? apellidos;
  String? contrasea;
  FluffyTokens? tokens;

  factory LoginUsuarioClass.fromJson(Map<String, dynamic> json) =>
      LoginUsuarioClass(
        identificacion: json["Identificacion"],
        nombre: json["Nombre"],
        apellidos: json["Apellidos"],
        contrasea: json["Contraseña"],
        tokens: FluffyTokens.fromJson(json["Tokens"]),
      );

  Map<String, dynamic> toJson() => {
        "Identificacion": identificacion,
        "Nombre": nombre,
        "Apellidos": apellidos,
        "Contraseña": contrasea,
        "Tokens": tokens?.toJson(),
      };
}

class FluffyTokens {
  FluffyTokens();

  factory FluffyTokens.fromJson(Map<String, dynamic> json) => FluffyTokens();

  Map<String, dynamic> toJson() => {};
}
