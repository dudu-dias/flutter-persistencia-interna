import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nomeController = TextEditingController();

  final TextEditingController _contaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Novo Contato'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome Completo'
                ),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _contaController,
                decoration: InputDecoration(
                  labelText: 'Número da Conta'
                ),
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                  child: RaisedButton(
                  child: Text('Criar') ,
                  onPressed: (){
                    final String nome = _nomeController.text;
                    final int conta = int.tryParse(_contaController.text);
                    final Contact newContact = Contact(nome, conta);
                    Navigator.pop(context, newContact);
                  },),
              ),
            )
          ],
        ),
      ),
    );
  }
}