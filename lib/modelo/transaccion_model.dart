// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: modelo de la transacción de la cuenta

import 'dart:ui';

import 'package:first_bank/utilidad/paleta_constantes.dart';

class TransaccionModel {
  String avatar;
  String nombre;
  String detalle;
  String fecha;
  double cantidad;
  double saldo;
  String tipo;
  Color? color;

  TransaccionModel({
    required this.avatar,
    required this.nombre,
    required this.detalle,
    required this.fecha,
    required this.cantidad,
    required this.saldo,
    required this.tipo,
    this.color,
  });
}

List<TransaccionModel> lstTransaccionAhorro = [
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Santiago Pineda",
    detalle:"Pago de dominio",
    fecha: "10/12/2021 10:20:30 AM",
    cantidad: 120.0,
    saldo: 0.0,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Ana León",
    detalle: "Pago de servicios web",
    fecha: "10/12/2021 12:20:30 AM",
    cantidad: 20.0,
    saldo: 0.0,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
  TransaccionModel(
    avatar: "assets/images/outcome.png",
    nombre: "Pedro Sanchez",
    detalle: "Pago de Punto de Red",
    fecha: "15/12/2021 12:20:30 AM",
    cantidad: 340.0,
    saldo: 0.0,
    tipo: "OUTCOME",
    color: PaletaConstantes.activeOutCome,
  ),
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Luisa Choez",
    detalle: "Mantenimiento de sitio web",
    fecha: "16/12/2021 08:00:30 AM",
    cantidad: 50.0,
    saldo: 0.0,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
  TransaccionModel(
    avatar: "assets/images/outcome.png",
    nombre: "Allan Pojuil",
    detalle: "Pago de energía eléctrica",
    fecha: "15/12/2021 12:20:30 AM",
    cantidad: 340.0,
    saldo: 0.0,
    tipo: "OUTCOME",
    color: PaletaConstantes.activeOutCome,
  ),
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Carmen Pineda",
    detalle: "Mantenimiento",
    fecha: "18/12/2021 17:00:00 PM",
    cantidad: 50,
    saldo: 50,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
];

List<TransaccionModel> lstTransaccionCorriente = [
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Marco Augurio",
    detalle:"Pago de dominio",
    fecha: "10/12/2021 10:20:30 AM",
    cantidad: 50.0,
    saldo: 0.0,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
  TransaccionModel(
    avatar: "assets/images/income.png",
    nombre: "Anais Alain",
    detalle: "Pago de servicios web",
    fecha: "10/12/2021 11:45:00 AM",
    cantidad: 20.0,
    saldo: 0.0,
    tipo: "INCOME",
    color: PaletaConstantes.activeIncome,
  ),
  TransaccionModel(
    avatar: "assets/images/outcome.png",
    nombre: "Pedro Sanchez",
    detalle: "Pago de Infracestructura",
    fecha: "15/12/2021 13:20:00 PM",
    cantidad: 34.0,
    saldo: 0.0,
    tipo: "OUTCOME",
    color: PaletaConstantes.activeOutCome,
  ),
  TransaccionModel(
    avatar: "assets/images/outcome.png",
    nombre: "Pedro Sanchez",
    detalle: "Pago de servicio de internet",
    fecha: "15/12/2021 13:20:00 PM",
    cantidad: 24.0,
    saldo: 0.0,
    tipo: "OUTCOME",
    color: PaletaConstantes.activeOutCome,
  ),
  TransaccionModel(
    avatar: "assets/images/outcome.png",
    nombre: "Pedro Sanchez",
    detalle: "Pago de mantenimiento de servidores",
    fecha: "15/12/2021 15:20:00 PM",
    cantidad: 78.0,
    saldo: 0.0,
    tipo: "OUTCOME",
    color: PaletaConstantes.activeOutCome,
  ),
];