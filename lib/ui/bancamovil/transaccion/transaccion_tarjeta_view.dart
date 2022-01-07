// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: widget que lista las transacciones de la tarjeta
import 'package:first_bank/modelo/transaccion_model.dart';
import 'package:first_bank/utilidad/paleta_constantes.dart';
import 'package:first_bank/utilidad/tarjeta_estilo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransaccionTarjetaView extends StatelessWidget {
  final TransaccionModel transaccion;
  const TransaccionTarjetaView({Key? key, required this.transaccion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: PaletaConstantes.activeDegradadoMorado3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaccion.color,
                ),
                child: Image.asset(transaccion.avatar),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaccion.nombre,
                    style: TarjetaEstilo.LISTA_TITULO,
                  ),
                  Text(
                    transaccion.detalle.length > 30 ? transaccion.detalle.substring(0,20): transaccion.detalle,
                    style: TarjetaEstilo.LISTA_SUBTITULO,
                  ),
                  Text(
                    transaccion.fecha,
                    style: TarjetaEstilo.LISTA_SUBTITULO,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaccion.cantidad.toString(),
                    style: transaccion.tipo == 'INCOME'
                        ? TarjetaEstilo.LISTA_TITULO
                        : TarjetaEstilo.LISTA_TITULO_OUTCOME,
                  ),
                  Row(
                    children: [
                      transaccion.tipo == 'INCOME'
                          ? Icon(
                              FontAwesomeIcons.levelUpAlt,
                              size: 10,
                              color: PaletaConstantes.activeIncome,
                            )
                          : Icon(
                              FontAwesomeIcons.levelDownAlt,
                              size: 10,
                              color: PaletaConstantes.activeOutCome,
                            ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
