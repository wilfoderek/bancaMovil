// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: contenedor general de la banca movil que contiene al resto de pantallas

import 'package:first_bank/modelo/tarjeta_model.dart';
import 'package:first_bank/modelo/transaccion_model.dart';
import 'package:first_bank/ui/bancamovil/encabezado_navegacion.dart';
import 'package:first_bank/ui/bancamovil/informacion_adicional/informacion_adicional_view.dart';
import 'package:first_bank/ui/bancamovil/qr/scannerqr_view.dart';
import 'package:first_bank/ui/bancamovil/tarjeta/info_view.dart';
import 'package:first_bank/ui/bancamovil/tarjeta/tarjeta_view.dart';
import 'package:first_bank/ui/bancamovil/tarjeta/tarjetademo_view.dart';
import 'package:first_bank/ui/bancamovil/transaccion/transaccion_tarjeta_view.dart';
import 'package:first_bank/utilidad/contantes.dart';
import 'package:first_bank/utilidad/paleta_constantes.dart';
import 'package:first_bank/utilidad/tarjeta_estilo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContenedorGeneralView extends StatefulWidget {
  _ContenedorGeneralViewState createState() => _ContenedorGeneralViewState();
}

class _ContenedorGeneralViewState extends State<ContenedorGeneralView> {
  late Size size;


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildBarra(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildSeccionTarjetas(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Mis Transacciones",
              style: TarjetaEstilo.BODY_TEXT
            ),
            Divider(
              thickness: 2.0,
            ),
            _buildMisTransacciones(),
          ]),
        ),
      ),
      floatingActionButton: _buildBotonFlotanteAccion(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: _buildDrawer(),
    );
  }


  AppBar _buildBarra() {
    return AppBar(
      backgroundColor: PaletaConstantes.activeCromado,
      elevation: 0,
      title: Text("Wilfredo Martel"),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              PaletaConstantes.activeDegradadoMorado1,
              PaletaConstantes.activeMorado
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      ),
      actions: [
        Icon(Icons.filter_drama_outlined),
        SizedBox(width: 12),
      ],
    );
  }

  Container _buildSeccionTarjetas() {
    return Container(
      height: Constantes.TARJETA_ALTURA + 5.0,
      child: ListView.separated(
          physics: ClampingScrollPhysics(),
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: lstTarjetas.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TarjetaView(
              tarjeta: lstTarjetas[index],
            );
          }),
    );
  }

  ListView _buildMisTransacciones() {
    return ListView.separated(
        itemCount: lstTransaccionAhorro.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          return TransaccionTarjetaView(
              transaccion: lstTransaccionAhorro[index]);
        });
  }

  Column _buildBotonFlotanteAccion(){
    return  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton(
        backgroundColor: PaletaConstantes.activeNaranja,
        splashColor: Colors.white.withOpacity(0.25),
        child: Icon(Icons.qr_code, ),
        tooltip: "Scannner QR",
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ScannerQRView(),
          ));
        },
      ),
    ]);
  }

  Drawer _buildDrawer() {
    return Drawer(
        child: ListView(children: [
      EncabezadoNavegacion(),
      Divider(),
      ListTile(
        leading: Icon(Icons.info),
        title: const Text('Información adicional'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ]));
  }

}
