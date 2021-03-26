import 'package:flutter/material.dart';
import 'package:youtube/CustomSearchDelegate.dart';
import 'package:youtube/Telas/Biblioteca.dart';
import 'package:youtube/Telas/EmAlta.dart';
import 'package:youtube/Telas/Inicio.dart';
import 'package:youtube/Telas/Inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Indice da bottomBar
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    //Lista de Widgets (telas)
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];
    return Scaffold(
      appBar: AppBar(
        //Define cor padrao para os icones
        iconTheme: IconThemeData(
          color: Colors.grey,
          //0.2 / 1 / 0*
          //opacity: 1,
        ),
        title: Image.asset(
          "images/youtube.png",
          width: 95,
          height: 30,
        ),
        backgroundColor: Colors.white,
        //Acoes/Podem ser widgets
        actions: [
          //Icones com funcao de botao
          IconButton(
            onPressed: () async {
              String resultado = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
              //Teste de resultado digitado
              print("Resultado: " + resultado);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("account");
            },
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      //Configurar para tela mudar com
      body: Container(
        //Padding para todas telas a serem carregadas
        padding: EdgeInsets.all(16),
        //Telas
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //Mudanca
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        //Precisamos definir uma lista de widgets
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        //Deixar um cor fixa ate 3, mas ate 4 muda para shifting
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            label: "Inicio",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
            label: "Em Alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.blue,
            label: "Inscricao",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
