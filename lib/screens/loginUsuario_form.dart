import 'package:flutter/material.dart';

class LoginUsuarioForm extends StatelessWidget {
//constructor
  const LoginUsuarioForm({super.key});

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
          _idientificacionField(),
          //textbox que recoge  el password
          _passwordField(),
          //boton para inciar sesion
          _botonLogin(),
          _botonUsuarioNuevo()
        ],
      ),
    );
  }

  TextField _passwordField() {
    return TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      labelText: "Password",
    ));
  }

  TextField _idientificacionField() {
    return TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      labelText: "Identificación",
    ));
  }
}

class _botonLogin extends StatelessWidget {
  const _botonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Iniciar Sesión')),
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
