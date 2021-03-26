import 'package:flutter/material.dart';

//Classe de Pesquisa
class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  //Definir as acoes que o usuario pode digitar
  List<Widget> buildActions(BuildContext context) {
    return [
      //Botao de apagar
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            //Pegar o que esta ser digitado
            query = "";
          }),
      //IconButton(icon: Icon(Icons.done), onPressed: () {}),
    ];
  }

  @override
  //Metodo que define o botao de voltar
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          //Quando fechamos, podemos passar um parametro depois do context
          close(context, null);
        });
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
