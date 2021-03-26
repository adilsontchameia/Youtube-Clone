import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyASz0-iM-pLZ7d5vQnjzvNmCBA5ltbYe5k";
const ID_CANAL = "UCzyS5aq4oma80c1cJ5z7yig";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

//Metodos da API
class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q=$pesquisa");
    //Validando codigos da requisicao
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      //Lista de Videos
      //Tem objetos
      //Outro metodo de percorrer
      List<Video> videos = dadosJson["items"].map<Video>((map) {
        //Retornar os videos convertidos
        return Video.fromJson(map);
        //return Video.converterJson(map);
      }).toList;

      //Retornar os videos
      return videos;
      //Percorrer os videos
      /*for (var video in dadosJson["items"]) {
        print("resultado: " + video.toString());
      }
      */

      //print(
      // "resultado: " + dadosJson["items"][4]["snippet"]["title"].toString());
    } else {}
  }
}
