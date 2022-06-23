// ignore_for_file: deprecated_member_use

import 'package:evento/screans/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

var usuario;
var senha;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 170, 236),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    onChanged: (user) {
                      usuario = user;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                TextField(
                    onChanged: (password) {
                      senha = password;
                    },
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if (usuario == 'admin' && senha == 'admin')
                        {
                          print("Correto"),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()))
                        }
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color: Color.fromARGB(255, 60, 46, 94),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
