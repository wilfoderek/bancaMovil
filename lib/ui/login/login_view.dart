// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * @skills: desarrollo de aplicativos mobiles,
//   buscadores semanticos, reconocimiento facial, sistemas de almacenamiento masivo
//   gestor documental.

import 'package:first_bank/ui/bancamovil/contenedor_general_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:first_bank/utilidad/paleta_constantes.dart';
import 'package:first_bank/utilidad/validacion.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //Utilziado para almacenar el token en el storage del teléfono
  final _storage = const FlutterSecureStorage();

  late String _email;
  late String _clave;

  final GlobalKey<FormState> _formKeyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaConstantes.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo/ePago.png"),
                      fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.only(top: 192, left: 20),
                color: Colors.black12.withOpacity(.10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tú solución perfecta y segura para transferir y cobrar dinero con ePago.",
                      style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: PaletaConstantes.activeBlanco,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: 230,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              height: 280,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {

                          },
                          child: Column(
                            children: [
                              Text(
                                "Iniciar Sesión",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: PaletaConstantes.activeColor),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                   _buildInicioSesion()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///
  ///  Contenedor de inicio de sesión
  ///
  Container _buildInicioSesion() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Form(
          key: _formKeyLogin,
          child: Column(children: [
            _buildCorreo(),
            SizedBox(height: 10),
            _buildClave(),
            ElevatedButton(
              child: Text('Iniciar Sesión'),
              style: ElevatedButton.styleFrom(
                primary: PaletaConstantes.activeMorado, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () async {
                if (!_formKeyLogin.currentState!.validate()) {
                  return;
                }
                _formKeyLogin.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContenedorGeneralView()),
                );
              },
            ),
          ]),
        ));
  }

  ///
  ///  widget de correo
  ///
  Widget _buildCorreo() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail_outline,
            color: PaletaConstantes.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletaConstantes.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletaConstantes.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: "micorreo@hotmail.com",
          hintStyle:
              TextStyle(fontSize: 14, color: PaletaConstantes.textColor1),
        ),
        validator: (value) {
          return Validacion().validarCorreo(value!);
        },
        onSaved: (value) {
          _email = value!;
        },
      ),
    );
  }

  ///
  ///  widget de la clave
  ///
  Widget _buildClave() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.password_outlined,
            color: PaletaConstantes.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletaConstantes.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletaConstantes.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: "**********",
          hintStyle:
              TextStyle(fontSize: 14, color: PaletaConstantes.textColor1),
        ),
        validator: (value) {
         return Validacion().validarPassword(value!);
        },
        onSaved: (value) {
          _clave = value!;
        },
      ),
    );
  }


}
