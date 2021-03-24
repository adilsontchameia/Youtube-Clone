class Video {
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  //Construtor
  Video({this.id, this.titulo, this.descricao, this.imagem, this.canal});

  //Metodo para converter video
  static converterJson(Map<String, dynamic> json){
  
  }

  static Video.fromJson(Map<String, dynamic> json) {
    return Video();
  }

  //Getters e Setters
  String get getId => this.id;

  set setId(String id) => this.id = id;

  get getTitulo => this.titulo;

  set setTitulo(titulo) => this.titulo = titulo;

  get getDescricao => this.descricao;

  set setDescricao(descricao) => this.descricao = descricao;

  get getImagem => this.imagem;

  set setImagem(imagem) => this.imagem = imagem;

  get getCanal => this.canal;

  set setCanal(canal) => this.canal = canal;
}
