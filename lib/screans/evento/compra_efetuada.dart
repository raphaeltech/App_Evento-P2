import 'package:flutter/material.dart';
import 'package:evento/models/evento_model.dart';
import 'package:evento/screans/form_evento_screaan.dart';
import 'package:evento/screans/evento/perfil_evento.dart';

class CompraEfetuada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O Seu App de Eventos!"),
        backgroundColor: Color.fromARGB(255, 60, 46, 94),
      ),
      backgroundColor: Color.fromARGB(255, 210, 170, 236),
      body: Column(children: const [
        Center(
          heightFactor: 2,
          child: Text('Compra efetuada com sucesso!',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              )),
        ),
      ]),
    );
  }
}
