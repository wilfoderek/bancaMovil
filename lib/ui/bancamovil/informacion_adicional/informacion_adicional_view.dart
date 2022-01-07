// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: pantalla de informacion adiconal

import 'package:flutter/material.dart';

class InformacionAdicionalView extends StatelessWidget{
  const InformacionAdicionalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "Información Adicional",
            ),
          ),
        ],
    );
  }
}