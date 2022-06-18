import 'package:evento/screans/evento/perfil_evento.dart';

import 'package:flutter/material.dart';

import 'package:evento/models/evento_model.dart';

class customNavBar extends StatefulWidget {
  final Evento? evento;
  String id;
  customNavBar(this.id, {this.evento});
  int paginaAberta = 0;

  @override
  State<customNavBar> createState() => _customNavBarState();
}

class _customNavBarState extends State<customNavBar> {
  late Widget paginaAtual;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Color(0xFFE7DAE4),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 0;
                      });

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => PerfilEvento(
                            evento: eventos[0],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "perfil",
                          style: TextStyle(
                            color: widget.paginaAberta == 0
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.healing,
                        color: widget.paginaAberta == 1
                            ? Colors.redAccent
                            : Colors.grey,
                      ),
                      Text(
                        "Remédio",
                        style: TextStyle(
                          color: widget.paginaAberta == 1
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_hospital,
                          color: widget.paginaAberta == 2
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Consulta",
                          style: TextStyle(
                            color: widget.paginaAberta == 2
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.paginaAberta = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_note,
                          color: widget.paginaAberta == 3
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                        Text(
                          "Anotações",
                          style: TextStyle(
                            color: widget.paginaAberta == 3
                                ? Colors.redAccent
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
