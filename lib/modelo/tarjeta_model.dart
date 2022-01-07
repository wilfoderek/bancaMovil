// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: model de las tarjetas

import 'dart:ui';
import 'package:first_bank/utilidad/paleta_constantes.dart';

class TarjetaModel {
  String propietario;
  String tipoCuenta;
  String numero;
  double saldo;
  Color? cardColor;

  TarjetaModel({
    required this.propietario,
    required this.tipoCuenta,
    required this.numero,
    required this.saldo,
    this.cardColor,
  });
}

List<TarjetaModel> lstTarjetas = [
  TarjetaModel(
    propietario: "Wilfredo Martel",
    tipoCuenta: "Ahorro",
    numero: "524234234",
    saldo: 150.0,
    cardColor: PaletaConstantes.activeNaranja,
  ),
  TarjetaModel(
    propietario: "Wilfredo Martel",
    tipoCuenta: "Corriente",
    numero: "12334456",
    saldo: 20.0,
    cardColor: PaletaConstantes.activeNaranja,
  ),
];