import 'package:flutter/material.dart';

//Classe de Pesquisa
class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  //Definir as acoes que o usuario pode digitar
  List<Widget> buildActions(BuildContext context) {
    return [
      //Botao de apagar
      IconButton(icon: Icon(Icons.clear), onPressed: () {}),
      //IconButton(icon: Icon(Icons.done), onPressed: () {}),
    ];
  }

  @override
  //Metodo que define o botao de voltar
  Widget buildLeading(BuildContext context) {
    return Container();
  }

  //Controla os resultados pesquisados
  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  //Mostra sugestoes de pesquisa
  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
