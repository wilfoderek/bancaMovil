import 'package:first_bank/utilidad/paleta_constantes.dart';
import 'package:flutter/material.dart';


class TarjetaEstilo {
  static const TextStyle TITULO =
      TextStyle(color: PaletaConstantes.activeAmarillo, fontWeight: FontWeight.w700, fontSize: 16);

  static const TextStyle SUBTITULO =
      TextStyle(color: PaletaConstantes.activeBlanco, fontWeight: FontWeight.w700, fontSize: 18);

  static const TextStyle BODY_TEXT = TextStyle(
      color: PaletaConstantes.activeMorado, fontWeight: FontWeight.w700, fontSize: 20);

  static const TextStyle LISTA_TITULO = TextStyle(
    color: PaletaConstantes.activeNegro,
    fontSize: 20,
  );

  static const TextStyle LISTA_TITULO_OUTCOME = TextStyle(
    color: PaletaConstantes.activeOutCome,
    fontSize: 20,
  );

  static const TextStyle LISTA_SUBTITULO = TextStyle(
    color: PaletaConstantes.activeDegradadoMorado2,
    fontSize: 15,
  );
}
