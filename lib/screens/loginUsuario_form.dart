import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea6_progra5/providers/loginUsuario_Provider.dart';

class LoginUsuarioForm extends StatelessWidget {
//constructor
//  const LoginUsuarioForm({super.key});

//

  final _logincontroller = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          //textbox que recoge el usuario
          _idientificacionField(context),
          //textbox que recoge  el password
          _passwordField(context),
          //boton para inciar sesion
          _botonLogin(
            controller: _logincontroller,
          ),
          _botonUsuarioNuevo()
        ],
      ),
    );
  }

  TextField _passwordField(BuildContext context) {
    final loginusuarioProvider = Provider.of<LoginUsuarioProvider>(context);
    return TextField(
        controller: _logincontroller..text = loginusuarioProvider.password!,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: "Password",
        ));
  }

  TextField _idientificacionField(BuildContext context) {
    final loginUsuarioProvider = Provider.of<LoginUsuarioProvider>(context);
    return TextField(
        controller: _logincontroller
          ..text = loginUsuarioProvider.indetificacion!,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          labelText: "Identificación",
        ));
  }
}

class _botonLogin extends StatelessWidget {
  final TextEditingController controller;

  const _botonLogin({
    Key? key,
    required this.controller,
  }) : super(key: key);

//

  @override
  Widget build(BuildContext context) {
    final loginUsuarioProvider =
        Provider.of<LoginUsuarioProvider>(context, listen: false);
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              if (controller.text.trim().isEmpty) {
                final snackBar = SnackBar(
                    content:
                        Text("Por favor digite un usuario y su contraseña"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                final prov =
                    Provider.of<LoginUsuarioProvider>(context, listen: false);
                prov.identificacion = controller.text;
              }
            },
            child: Text('Iniciar Sesión')),
        Text(""),
      ],
    );
  }
}

class _botonUsuarioNuevo extends StatelessWidget {
  const _botonUsuarioNuevo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Usuario Nuevo')),
        Text(""),
      ],
    );
  }
}
