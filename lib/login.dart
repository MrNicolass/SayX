import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayx/utils/utils.dart' as utils;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    utils.telaCheia();
    return Scaffold(
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
                    onPressed: () {},
                    style: utils.botaoTransp(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.030,
                      child: Center(
                        child: Text('Já tenho Conta',
                          style: utils.textoMedio().copyWith(color: Colors.white, fontWeight: FontWeight.bold)
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