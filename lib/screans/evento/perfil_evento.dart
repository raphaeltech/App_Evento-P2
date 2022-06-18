// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../widgets/custom_navbar.dart';
import '../../models/evento_model.dart';
import '../../screans/evento/compra_efetuada.dart';

class PerfilEvento extends StatelessWidget {
  //const PerfilEvento({Key? key}) : super(key: key);
  final Evento? evento;
  PerfilEvento({this.evento});
  Widget _cartaoInoEvento(String label, String informacao) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
          color: Color(0xFFE7DAE4), borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            informacao,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: evento!.id,
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(evento!.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    evento!.nome,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Text(
                evento!.descricao,
                style: TextStyle(fontSize: 16, height: 1.5),
                maxLines: 3,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _cartaoInoEvento('data', evento!.data.toString()),
                  _cartaoInoEvento('valor', evento!.valor),
                ],
              ),
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CompraEfetuada()));
                },
                child: Text("Comprar"))
          ],
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: customNavBar(evento!.id),
    );
  }
}
