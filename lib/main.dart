import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea6_progra5/providers/loginUsuario_Provider.dart';
import 'package:tarea6_progra5/screens/loginUsuario_form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 6',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 6'),
        ),
        body: ChangeNotifierProvider(
            create: (BuildContext context) {
              return LoginUsuarioProvider();
            },
            child: LoginUsuarioForm()),
      ),
    );
  }
}
