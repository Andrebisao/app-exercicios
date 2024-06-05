class SentimentModel {
  String id;
  String sentindo;
  String data;

  SentimentModel(
      {required this.id, required this.sentindo, required this.data});

  SentimentModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        sentindo = map["sentindo"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sentindo": sentindo,
      "data": data,
    };
  }
}

//tela dois
class SentimentModel2 {
  String id;
  String sentindo;
  String data;

  SentimentModel2(
      {required this.id, required this.sentindo, required this.data});

  SentimentModel2.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        sentindo = map["sentindo"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sentindo": sentindo,
      "data": data,
    };
  }
}
