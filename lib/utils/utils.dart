import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//#region Funções

//Função para deixar a tela em fullscreen
void telaCheia() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

//#endregion Funções

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

TextStyle textoEditavel(double tamFonte){
  return TextStyle(
    color: Colors.white,
    fontSize: tamFonte,
    fontFamily: 'Montserrat',
  );
}
//#endregion EstiloTexto

//#region EstiloBotao

ButtonStyle botaoShade(){
  return ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 39, 205, 242),
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(
          color: Colors.black,
          width: 1
      ),
    ),
  );
}

ButtonStyle botaoTransp(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(
          color: Colors.white,
          width: 1
      ),
    ),
  );
}

ButtonStyle botaoFullTransp(){
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 24, 24, 24)),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    animationDuration: Duration.zero,
    textStyle: MaterialStateProperty.all(textoMedio().copyWith(color: Color.fromARGB(255, 242, 82, 125), fontWeight: FontWeight.bold)),
    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: const BorderSide(
          color: Colors.transparent,
          width: 0.6
      ),
    )),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  );
}

//#endregion EstiloBotao

//#region ElementosFormProntos

TextFormField inputTransp(controller, String texto){
  return TextFormField(
      style: textoMedio(),
      controller: controller,
      maxLength: 15,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: texto,
        hintStyle: textoEditavel(14),
        labelStyle: textoEditavel(14),
        counter: const Offstage(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 9.5),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      )
  );
}

//#endregion EstiloInput