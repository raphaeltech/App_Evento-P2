import 'package:flutter/material.dart';
import 'package:evento/screans/home_screen.dart';
import 'package:evento/screans/form_evento_screaan.dart';
import 'package:evento/screans/evento/perfil_evento.dart';
import 'package:evento/screans/login.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Eventos",
      home: new Login(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
