import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyASz0-iM-pLZ7d5vQnjzvNmCBA5ltbYe5k";
const ID_CANAL = "UCzyS5aq4oma80c1cJ5z7yig";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

//Metodos da API
class Api {
  pesquisar(String pesquisa) async {
    http.Response response;
    response = await http.get(
      Uri.parse(URL_BASE +
          "search"
              //Dados dos videos
              //? apenas no primeiro paramentro
              "?part=snippet"
              //& - url
              "&type"
              "&maxResults=20"
              "&order=date"
              "&key=$CHAVE_YOUTUBE_API"
              "&channelId=$ID_CANAL"
              "&q=$pesquisa"),
    );
  }
}
