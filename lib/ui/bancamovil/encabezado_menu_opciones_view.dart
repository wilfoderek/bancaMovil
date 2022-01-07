// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: lista las acciones del encabezado. Salir, información Adicional.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EncabezadoMenuOpciones extends StatelessWidget {
  const EncabezadoMenuOpciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListTile(
          title: const Text('Información adicional'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Salir'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
