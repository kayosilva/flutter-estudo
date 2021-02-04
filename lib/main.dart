import 'package:bytebank/screens/lista-transferencias.component.dart';
import 'package:flutter/material.dart';

const darkMode = false;

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkMode
          ? ThemeData.dark()
          : ThemeData(
              primaryColor: Colors.green[900],
              accentColor: Colors.blueAccent[700],
              buttonTheme: ButtonThemeData(
                buttonColor: Colors.blueAccent[700],
                textTheme: ButtonTextTheme.primary,
              )),
      home: Scaffold(
        body: ListaTransferencias(),
      ),
    );
  }
}
