import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tarea6_progra5/models/LoginUsuario.dart';

class LoginUsuarioProvider with ChangeNotifier {
  String? _Mensaje = "";
  String? _currentIdentificacion = "";
  String? _currentPassword = "";

  //
  //getters
  String? get mensaje => _Mensaje;
  String? get indetificacion => _currentIdentificacion;
  String? get password => _currentPassword;
  //
  //setters
  set mensaje(String? newValue) {
    this._Mensaje = newValue;
    notifyListeners();
  }

  set identificacion(String? newValue) {
    this._currentIdentificacion = newValue;
    this._currentIdentificacion(newValue);
  }

  set password(String? newValue) {
    this._currentPassword = newValue;
  }

//clase que consume el api para logear el usuario
  getMensaje(String identificacion) async {
    //url api get
    Uri uri =
        Uri.parse("http://localhost:56108/api/LoginUsuarios/$identificacion");
    final response = await http.get(uri);
    final mensajeResp = loginUsuarioFromJson(response.body);
    // mensaje= mensajeResp.algo==null ? '':mensajeResp.algo;
  }
}
