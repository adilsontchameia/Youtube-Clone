import 'package:flutter/material.dart';
import 'package:youtube/Telas/Api.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    //Instanciar API, para executar no app
    Api api = Api();
    api.pesquisar("");

    return Container(
      child: Center(
        child: Text("Inicio"),
      ),
    );
  }
}
