import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyASz0-iM-pLZ7d5vQnjzvNmCBA5ltbYe5k";
const ID_CANAL = "UCzyS5aq4oma80c1cJ5z7yig";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

//Metodos da API
class Api {
  pesquisar(String pesquisa) async {
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
      //print("Resultado:" + response.body);
      //Tivemos como retorno o MAP, e vamos pegar
      Map<String, dynamic> dadosJson = json.decode(response.body);
      //Com isso podemos pegar alguns itens
      print("Resultado:" + dadosJson["pageInfo"]);
    } else {}
  }
}
