import 'package:flutter/material.dart';
import 'package:youtube/Telas/Api.dart';
import 'package:youtube/model/Video.dart';

class Inicio extends StatefulWidget {
  //String que sera recebida como pesquisa
  String pesquisa;
  Inicio(this.pesquisa);
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  //Metodo para listar videos
  _listarVideos(String pesquisar) {
    Future<List<Video>> videos;

    Api api = Api();
    //Retornar os videos
    return api.pesquisar(pesquisar);
  }

  @override
  Widget build(BuildContext context) {
    //Instanciar API, para executar no app

    return FutureBuilder<List<Video>>(
      future: _listarVideos(widget.pesquisa),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            //Colocar um indicador de progresso
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ));
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              //Retornar os videos numa lista
              return ListView.separated(
                itemBuilder: (context, index) {
                  //Recuperar lista antes de chamar coluna
                  List<Video> videos = snapshot.data;
                  Video video = videos[index];
                  //Exibindo na tela
                  //Vou retornar numa coluna
                  return Column(
                    children: [
                      //Estrutura de Video
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            //Pegando imagem da internet
                            image: NetworkImage(video.imagem),
                          ),
                        ),
                      ),
                      //Retornar listagem dos titulos
                      ListTile(
                        title: Text(video.titulo),
                        subtitle: Text(video.descricao),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  height: 3,
                  color: Colors.grey,
                ),
                itemCount: (snapshot.data.length),
              );
            } else {
              return Center(
                child: Text("Nenhum dados a ser exibido"),
              );
            }
            break;
        }
      },
    );
  }
}
