import 'file:///C:/dev/flutter-estudos/bytebank/lib/screens/formulario-transferencia.component.dart';
import 'package:bytebank/components/item-lista-transferencias.component.dart';
import 'package:bytebank/models/transferencia.model.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() => ListaTransferenciasState();
}

class ListaTransferenciasState extends State<ListaTransferencias> {
  _atualizaLista(Transferencia transferencia) {
    if (transferencia != null) {
      setState(() {
        widget._transferencias.add(transferencia);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferencias"),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          debugPrint(widget._transferencias.length.toString());
          debugPrint(widget._transferencias[indice].toString());
          debugPrint(indice.toString());
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then(
            (transferenciaRecebida) => _atualizaLista(transferenciaRecebida),
          );
        },
      ),
    );
  }
}
