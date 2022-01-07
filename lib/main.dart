import 'package:first_bank/ui/login/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InicioBancaMovil());
}

class InicioBancaMovil extends StatelessWidget{
  const InicioBancaMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Inicio de sesión",
      home: LoginView(),
    );
  }
}