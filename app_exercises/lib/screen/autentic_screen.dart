import 'package:flutter/material.dart';
import 'package:app_exercises/_color/my_colors.dart';
import 'package:app_exercises/screen/exercises_screen.dart';
import 'package:app_exercises/components/decoration_field.dart';

class AutenticScreen extends StatefulWidget {
  const AutenticScreen({super.key});

  @override
  State<AutenticScreen> createState() => _AutenticScreenState();
}

class _AutenticScreenState extends State<AutenticScreen> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, //cor de fundo principal
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
                //cores gradientee
                MyColors.preto,
                MyColors.amarelo
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            //usa-se para criar formulário
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Image(
                          //forma de colocar imagem no codigo
                          image: AssetImage(
                            "assets/image/logo.png",
                          ),
                          height: 128,
                          color: MyColors.amarelo,
                        ),
                        const Text(
                          textAlign: TextAlign
                              .center, //centraliza o texto dentro da coluna
                          "GymApp",
                          style: TextStyle(
                            //font para modificar as letras
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: MyColors.amarelo, //cor do texto GymApp
                          ),
                        ),
                        const SizedBox(
                          //coloca altura e largura
                          height: 80,
                        ),
                        TextFormField(
                          decoration: getDecorationField("E-mail:"),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "O E-mail não pode ser vazio";
                            }
                            if (value.length < 5) {
                              return "o E-mail é muito curto";
                            }
                            if (!value.contains("@")) {
                              return ("E-mail não é válido");
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          //coloca altura e largura
                          height: 5,
                        ),
                        TextFormField(
                          decoration: getDecorationField("Senha:"),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          obscureText: true,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "A senha não pode ser vazia";
                            }
                            if (value.length < 5) {
                              return "A senha é muito curta";
                            }
                            return null;
                          }, //esconder a senha
                        ),
                        const SizedBox(
                          //coloca altura e largura
                          height: 5,
                        ),
                        Visibility(
                            visible: !queroEntrar,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration:
                                      getDecorationField("Confirme a senha:"),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  obscureText: true,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return "A  confirmação de senha não pode ser vazia";
                                    }
                                    if (value.length < 5) {
                                      return "A confirmação de senha é muito curta";
                                    }
                                    return null;
                                  }, //esconder a senha
                                ),
                                const SizedBox(
                                  //coloca altura e largura
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: getDecorationField("Nome:"),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return "O nome não pode ser vazio";
                                    }
                                  },
                                ),
                              ],
                            )),
                        const SizedBox(
                          //coloca altura e largura
                          height: 5,
                        ),
                        ElevatedButton(
                          //cria um botao
                          onPressed: () {
                            botaoPrincipalClicado();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ExercisesScreen();
                              }),
                            );
                          },
                          child: Text((queroEntrar) ? "Entrar" : "Cadastrar"),
                        ),
                        const Divider(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              queroEntrar = !queroEntrar;
                            });
                          },
                          child: Text(
                            (queroEntrar)
                                ? "Ainda não tem uma conta?Cadastre-se"
                                : "Já tem uma conta? Entre!",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: MyColors.preto),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  botaoPrincipalClicado() {
    if (_formKey.currentState!.validate()) {
      print("Form válido");
    } else {
      print("Form inválido");
    }
  }
}
