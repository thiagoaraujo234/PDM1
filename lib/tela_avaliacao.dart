import 'package:flutter/material.dart';

class TelaAvaliacao extends StatefulWidget {

  late String result;

  TelaAvaliacao({super.key, required this.result});

  @override
  State<TelaAvaliacao> createState() => _TelaAvaliacao();
}

class _TelaAvaliacao extends State<TelaAvaliacao> {


  @override
  Widget build(BuildContext context) {

    String _avaliacao='';
    double _resultado= double.parse(widget.result);

    if(_resultado < 18.5){
        _avaliacao = 'Voce está abaixo do peso ideal';
    }else if (_resultado < 25) {
      _avaliacao += ' Seu peso está normal.';
    } else if (_resultado < 30) {
      _avaliacao += ' Você está acima do peso.';
    } else {
      _avaliacao += ' Você está obeso.';
    }

    return Scaffold(
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.result),
           const SizedBox(height: 5),
           Text(_avaliacao),
          const SizedBox(height: 10),
          Text('Tabela:\n \n IMC até 18.5 - Abaixo do peso \n '
              'IMC entre 18.5 e 25 - Peso normal \n '
              'IMC entre 25 e 30 - Acima do peso \n '
              'IMC acima de 30 - Caso de obesidade \n'),
           const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text('Voltar'))
        ],
      ),
      ),
    );
  }
}
