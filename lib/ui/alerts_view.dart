import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AlertsView extends StatelessWidget {
  const AlertsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 64, 77, 1.0),
        title: const Text("Alerts"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text("Mostrar Alerta"),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        if (Platform.isIOS) {
          return CupertinoAlertDialog(
            title: const Text("Mostrando alter"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                FlutterLogo(
                  size: 100.0,
                ),
                Text("Este es el contenido de mi alerta"),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        }
        return AlertDialog(
          title: const Text("Mostrando alter"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              FlutterLogo(
                size: 100.0,
              ),
              Text("Este es el contenido de mi alerta"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
}
