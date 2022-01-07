// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: widget de tarjeta

import 'package:first_bank/utilidad/contantes.dart';
import 'package:first_bank/utilidad/tarjeta_estilo.dart';
import 'package:flutter/material.dart';
import 'package:first_bank/modelo/tarjeta_model.dart';

class TarjetaDemoView extends StatelessWidget {
  final TarjetaModel tarjeta;

  const TarjetaDemoView({Key? key, required this.tarjeta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Constantes.PADDING,
      ),
      padding: const EdgeInsets.all(Constantes.PADDING * 2),
      decoration: BoxDecoration(
        color: tarjeta.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tipo Cuenta",
                style: TarjetaEstilo.TITULO,
              ),
              Text(
                tarjeta.tipoCuenta,
                style: TarjetaEstilo.SUBTITULO,
              ),
              Text(
                "Nro: " + tarjeta.numero,
                style: TarjetaEstilo.SUBTITULO,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saldo Disponible: ",
                    style: TarjetaEstilo.TITULO,
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tarjeta.saldo.toString(),
                    style: TarjetaEstilo.SUBTITULO,
                  ),
                ],
              )
            ],
          ),
        ],
    ),

    );
  }
}
