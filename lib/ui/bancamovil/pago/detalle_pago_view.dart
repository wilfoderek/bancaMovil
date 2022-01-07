import 'package:flutter/material.dart';

class DetalleView extends StatelessWidget {
  const DetalleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text("Realizar pago"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  height: 150,
                  width: 150,
                  child: FittedBox(
                      child: Image.asset('assets/images/send_money.png'),
                      fit: BoxFit.fill)),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: Text(
                "Estas enviando un pago a",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
