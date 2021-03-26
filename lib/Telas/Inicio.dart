import 'package:flutter/material.dart';
import 'package:youtube/Telas/Api.dart';
import 'package:youtube/model/Video.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  //Metodo para listar videos
  _listarVideos() {
    Future<List<Video>> videos;

    Api api = Api();
    //Retornar os videos
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    //Instanciar API, para executar no app

    return FutureBuilder<List<Video>>(
      future: _listarVideos(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            break;
          case ConnectionState.none:
          case ConnectionState.none:
            break;
        }
      },
    );
  }
}
