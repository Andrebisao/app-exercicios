class ExercisesModel {
  String id;
  String name;
  String treino;
  String comoFazer;

  String? urlImage;

  ExercisesModel({
    required this.id,
    required this.name,
    required this.treino,
    required this.comoFazer,
  });

  ExercisesModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        treino = map["treino"],
        comoFazer = map["comoFazer"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "treino": treino,
      "comoFazer": comoFazer,
      "urlImage": urlImage,
    };
  }
}
//tela dois
class ExercisesModel2 {
  String id;
  String name;
  String treino;
  String comoFazer;

  String? urlImage;

  ExercisesModel2({
    required this.id,
    required this.name,
    required this.treino,
    required this.comoFazer,
  });
//tela dois
  ExercisesModel2.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        treino = map["treino"],
        comoFazer = map["comoFazer"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "treino": treino,
      "comoFazer": comoFazer,
      "urlImage": urlImage,
    };
  }
}
