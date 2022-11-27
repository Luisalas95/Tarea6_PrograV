// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

List<Token> tokenFromJson(String str) =>
    List<Token>.from(json.decode(str).map((x) => Token.fromJson(x)));

String tokenToJson(List<Token> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Token {
  Token({
    this.token,
    this.periodoValidesMinutos,
    this.idUsuario,
    this.loginUsuario,
  });

  String? token;
  String? periodoValidesMinutos;
  String? idUsuario;
  TokenLoginUsuario? loginUsuario;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        token: json["Token"],
        periodoValidesMinutos: json["Periodo_Valides_Minutos"],
        idUsuario: json["ID_Usuario"],
        loginUsuario: TokenLoginUsuario.fromJson(json["LoginUsuario"]),
      );

  Map<String, dynamic> toJson() => {
        "Token": token,
        "Periodo_Valides_Minutos": periodoValidesMinutos,
        "ID_Usuario": idUsuario,
        "LoginUsuario": loginUsuario?.toJson(),
      };
}

class TokenLoginUsuario {
  TokenLoginUsuario({
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
  Tokens? tokens;

  factory TokenLoginUsuario.fromJson(Map<String, dynamic> json) =>
      TokenLoginUsuario(
        identificacion: json["Identificacion"],
        nombre: json["Nombre"],
        apellidos: json["Apellidos"],
        contrasea: json["Contraseña"],
        tokens: Tokens.fromJson(json["Tokens"]),
      );

  Map<String, dynamic> toJson() => {
        "Identificacion": identificacion,
        "Nombre": nombre,
        "Apellidos": apellidos,
        "Contraseña": contrasea,
        "Tokens": tokens?.toJson(),
      };
}

class Tokens {
  Tokens({
    this.token,
    this.periodoValidesMinutos,
    this.idUsuario,
    this.loginUsuario,
  });

  String? token;
  String? periodoValidesMinutos;
  String? idUsuario;
  TokensLoginUsuario? loginUsuario;

  factory Tokens.fromJson(Map<String, dynamic> json) => Tokens(
        token: json["Token"],
        periodoValidesMinutos: json["Periodo_Valides_Minutos"],
        idUsuario: json["ID_Usuario"],
        loginUsuario: TokensLoginUsuario.fromJson(json["LoginUsuario"]),
      );

  Map<String, dynamic> toJson() => {
        "Token": token,
        "Periodo_Valides_Minutos": periodoValidesMinutos,
        "ID_Usuario": idUsuario,
        "LoginUsuario": loginUsuario?.toJson(),
      };
}

class TokensLoginUsuario {
  TokensLoginUsuario();

  factory TokensLoginUsuario.fromJson(Map<String, dynamic> json) =>
      TokensLoginUsuario();

  Map<String, dynamic> toJson() => {};
}
