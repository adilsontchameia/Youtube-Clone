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
          close(context, "");
        });
  }

  //Controla os resultados pesquisados
  @override
  Widget buildResults(BuildContext context) {
    //Fechando a janela, mas pegado o que foid digitado(query).
    close(context, query);
    //print("Pesquisa realizada");
    return Container();
  }

  //Mostra sugestoes de pesquisa
  @override
  Widget buildSuggestions(BuildContext context) {
    print("Resultado digitado: " + query);
    List<String> lista = List();
    if (query.isNotEmpty) {
      lista = ["Braulio", "Eliezer", "Gonza", "Yago"]
          .where((texto) => texto.toLowerCase().startsWith(query.toLowerCase()))
          .toList();

      return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(lista[index]));
        },
      );
    } else {
      print("Sem resultado para pesquisa");
    }
  }
}
