import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayx/utils/utils.dart' as utils;

class Login extends StatelessWidget {
  Login({super.key});

  //Variáveis de controle do formulário
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).viewInsets.bottom;
    utils.telaCheia();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/inicial-2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.26,
            child: Center(
              child: Image.asset('assets/images/logo.png', width: 200, height: 200),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: utils.botaoShade(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.030,
                      child: Center(
                        child: Text('Crie sua Conta',
                          style: utils.textoMedio().copyWith(color: Colors.black, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      showModalBottomSheet(
                        isScrollControlled: false,
                        backgroundColor: const Color.fromARGB(255, 24, 24, 24),
                        context: context,
                        builder: (BuildContext context){
                          return SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Form(
                                key: formKey,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Icon(Icons.person, color: Color.fromARGB(255, 242, 82, 125), size: 30)
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, right: 5),
                                            child: Text('Login',
                                              style: utils.textoMedio().copyWith(fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left: 5, right: 5),
                                            child: Icon(Icons.lock, color: Colors.transparent, size: 30)
                                          ),
                                          Container(
                                            width: 200,
                                            height: 20,
                                            child: utils.inputTransp(controller, 'Digite seu Login')
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Transform.rotate(
                                              alignment: Alignment.center,
                                              angle: 310 * pi / 180,
                                              child: Icon(Icons.vpn_key, color: Color.fromARGB(255, 242, 82, 125), size: 30)
                                            )
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, right: 5),
                                            child: Text('Senha',
                                              style: utils.textoMedio().copyWith(fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left: 5, right: 5),
                                            child: Icon(Icons.lock, color: Colors.transparent, size: 30)
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                            child: Container(
                                              width: 200,
                                              height: 20,
                                              child: utils.inputTransp(controller, 'Digite sua Senha')
                                            )
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: (){},
                                        style: utils.botaoFullTransp(),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          height: MediaQuery.of(context).size.height * 0.020,
                                          child: Center(
                                            child: Text('Recuperar Senha',
                                              style: utils.textoPequeno().copyWith(color: Color.fromARGB(255, 242, 82, 125), fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: (){},
                                        style: utils.botaoShade(),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          height: MediaQuery.of(context).size.height * 0.030,
                                          child: Center(
                                            child: Text('Entrar',
                                              style: utils.textoMedio().copyWith(color: Colors.black, fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                )
                              )
                            )
                          );
                        }
                      );
                    },
                    style: utils.botaoTransp(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.030,
                      child: Center(
                        child: Text('Já tenho Conta',
                          style: utils.textoMedio()
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          )
        ],
      ),
    );
  }
}