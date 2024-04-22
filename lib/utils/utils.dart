import 'package:flutter/material.dart';
import 'package:sayx/utils/utils.dart' as utils;

//#region EstiloTexto

TextStyle textoMedio(){
  return const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
  );
}

TextStyle textoGrande(){
  return const TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w100
  );
}

TextStyle textoPequeno(){
  return const TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'Montserrat',
  );
}
//#endregion EstiloTexto

//#region EstiloBotao

ButtonStyle ButtonShade(){
  return ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 39, 205, 242),
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: const BorderSide(
          color: Colors.black,
          width: 0.6
      ),
    ),
  );
}

ButtonStyle ButtonTransp(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: const BorderSide(
          color: Colors.white,
          width: 0.6
      ),
    ),
  );
}

//#endregion EstiloBotao