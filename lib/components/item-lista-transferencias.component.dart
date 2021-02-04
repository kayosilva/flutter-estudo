import 'package:bytebank/models/transferencia.model.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {

  final Transferencia _trasnferencia;

  ItemTransferencia(this._trasnferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_trasnferencia.valor.toString()),
          subtitle: Text(_trasnferencia.numeroConta.toString()),
        ));
  }
}