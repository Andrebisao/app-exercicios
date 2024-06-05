import 'package:flutter/material.dart';
import 'package:app_exercises/_color/my_colors.dart';
import 'package:app_exercises/models/exercises_model.dart';
import 'package:app_exercises/sentiment_model/SentimentModel.dart';

class ExercisesScreen extends StatelessWidget {
  ExercisesScreen({super.key});
//listas
//modelo de Exercicios
  ExercisesModel exercisesModel = ExercisesModel(
      id: "ex001",
      name: "Remada Baixa Supinada",
      treino: "Treino A",
      comoFazer: "Segura a barra e puxa");
//modelos de sentimentos
  List<SentimentModel> listaSentimentos = [
    SentimentModel(
      id: "SE001",
      sentindo: "pouca ativação hoje",
      data: "2024-05-15",
    ),
    SentimentModel(
      id: "SE002",
      sentindo: "Senti mais motivação ",
      data: "2024-05-20",
    ),
  ];

  //inicio da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 249, 249, 249), //alterar a cor das bordas
        appBar: AppBar(
          backgroundColor: MyColors.preto, //alterar a cor de fundo do appBar
          //parte superior
          title: Column(
            children: [
              Text(
                exercisesModel.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color:
                      MyColors.amarelo, //alterar a cor do nome do APPbar(nome)
                ),
              ),
              Text(
                exercisesModel.treino,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:
                      MyColors.branco, //alterar a cor do nome do APPbar(nome)
                ),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 80,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(42),
            ),
          ),
        ),
        //serve para criar um icone
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.accessibility_new_outlined,
          ),
        ),
        //corpo
        body: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  248, 252, 251, 251), //cor de fundo do campo principal
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(12), //coloca espaço nas margens
            padding: const EdgeInsets.all(15.0), //coloca espaço nas bordas
            child: ListView(
              children: [
                SizedBox(
                  //alterar propriedades da foto
                  height: 250,
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        //botao para enviar a foto
                        onPressed: () {},
                        //alterar cor do botao enviar foto
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              MyColors.preto, //cor de fundo enviar foto
                        ),
                        child: const Text(
                          "enviar foto",
                          style: TextStyle(
                            fontSize: 20,
                            color: MyColors.branco, //cor do texto enviar foto
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        //botao para tirar foto
                        onPressed: () {},
                        //alterar cor do botao tirar foto
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.preto,
                        ), //cor de fundo tirar foto
                        child: const Text(
                          "Tirar foto",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyColors.branco, //cor do texto tirar foto
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Como fazer?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.preto, //cor campo comoFazer
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  exercisesModel.comoFazer,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: MyColors.preto, //cor da linha divisora
                  ),
                ),
                const SizedBox(
                  height: 8,
                ), //coloca uma linha para separar widgets
                const Text(
                  "Qual intensidade do treino?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.preto, //cor do campo comoFazer
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(listaSentimentos.length, (index) {
                    SentimentModel sentimentoAgora = listaSentimentos[index];
                    return ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text(sentimentoAgora.sentindo),
                      subtitle: Text(sentimentoAgora.data),
                      leading: const Icon(Icons.double_arrow,
                          color: MyColors.amarelo),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: MyColors.preto, //cor do icone delete
                        ),
                        onPressed: () {
                          print("Deletar${sentimentoAgora.sentindo}");
                        },
                      ),
                    );
                  }),
                ),
              ],
            )));
  }
}
