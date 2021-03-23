import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              print("VideoCam");
            },
            icon: Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {
              print("search");
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
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        //Mudanca
        currentIndex: 2,
        //Precisamos definir uma lista de widgets
        fixedColor: Colors.red,
        //Deixar um cor fixa ate 3, mas ate 4 muda para shifting
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            label: "Lastest",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Subscribe",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "Library",
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
