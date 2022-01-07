import 'package:first_bank/utilidad/paleta_constantes.dart';
import 'package:flutter/cupertino.dart';

class EncabezadoNavegacion extends StatelessWidget {
  const EncabezadoNavegacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(top: 10, left: 10),
      color: PaletaConstantes.activeDegradadoMorado1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo/ePago.png"),
                    fit: BoxFit.fill)),
          ),
          Text(
            "Recibir y enviar dinero es más facil y seguro con ePago.",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: PaletaConstantes.activeBlanco,
            ),
          )
        ],
      ),
    );
  }
}
