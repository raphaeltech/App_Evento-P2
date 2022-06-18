class Evento {
  String nome;
  String imageUrl;
  String descricao;
  String data;
  String valor;
  String id;

  Evento(
      {required this.nome,
      required this.imageUrl,
      required this.descricao,
      required this.data,
      required this.valor,
      required this.id});
}

var eventos = [
  Evento(
      nome: "Campos Rep Festival",
      imageUrl: "assets/images/Campos_Rep_Festival.jpg",
      descricao: "Um evento de rep para você curtir",
      data: "18/06/2022",
      valor: "200,00",
      id: "1"),
  Evento(
      nome: "I Love Pagode",
      imageUrl: "assets/images/I_Love_Pagode.jpg",
      descricao: "Um evento de pagode só pra quem curte um bom som",
      data: "12/06/2022",
      valor: "200,00",
      id: "2"),
  Evento(
      nome: "Magolândia",
      imageUrl: "assets/images/Magolandia.jpg",
      descricao: "Mestre dos magos hahaha",
      data: "03/06/2022",
      valor: "200,00",
      id: "3"),
];
