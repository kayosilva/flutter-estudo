import 'package:bytebank/components/input-form-transferencia.component.dart';
import 'package:bytebank/models/transferencia.model.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FormularioTransferenciaState();
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void _onSaveTransferencia(BuildContext context) {
    int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    double valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      Transferencia transferencia = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferencia);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferencia')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputFormTransferencia(
              controller: _controladorCampoNumeroConta,
              labelText: 'Número da conta',
              hintText: '0000',
            ),
            InputFormTransferencia(
              controller: _controladorCampoValor,
                labelText: 'Valor',
                hintText: '0.00',
                icon: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _onSaveTransferencia(context),
            )
          ],
        ),
      ),
    );
  }
}
