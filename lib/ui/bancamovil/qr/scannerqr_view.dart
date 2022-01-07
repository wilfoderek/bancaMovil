// * @autor: Wilfredo Martel
// * @mail: logica_razon@hotmail.com
// * @web: https://medium.com/@wilfredo.martel
// * Nota: Scanner QR lee un código generado por la misma app. Se suguiere que durante el testeo
// se considere esta recomendación.
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerQRView extends StatefulWidget {
  State<StatefulWidget> createState() => _ScannerQRViewState();
}

class _ScannerQRViewState extends State<ScannerQRView> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barcode;
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _buildQrView(context),
        Positioned(bottom: 10, child: _buildResult()),
        Positioned(top: 10, child: _buildBotonesControl())
      ],
    )));
  }

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 20,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }

  Widget _buildResult() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
        ),
        child: Text(
          barcode != null ? 'Resultado: ${barcode!.code}' : 'Scanneando',
          maxLines: 3,
        ));
  }


  Widget _buildBotonesControl() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(onPressed: () async {
              Navigator.pop(context);
            }, icon: Icon(Icons.cancel))
          ],
        ));
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        this.barcode = scanData;

      });
    });
  }

}
