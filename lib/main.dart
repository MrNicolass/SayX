import 'package:flutter/material.dart';
import 'rotas.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    ),
  );
}
