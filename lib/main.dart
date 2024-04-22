import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayx/utils/utils.dart' as utils;

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Login(),
    ),
  );
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
