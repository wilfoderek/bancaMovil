// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: widget de tarjeta

import 'package:first_bank/utilidad/contantes.dart';
import 'package:first_bank/utilidad/tarjeta_estilo.dart';
import 'package:flutter/material.dart';
import 'package:first_bank/modelo/tarjeta_model.dart';

class TarjetaView extends StatelessWidget {
  final TarjetaModel tarjeta;

  const TarjetaView({Key? key, required this.tarjeta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: Constantes.TARJETA_ALTURA,
      width: 350,
      decoration: BoxDecoration(
        color: tarjeta.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                child: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {
                    print('Cargando detalle de tarjeta');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
