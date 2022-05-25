import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Bandeiras'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  Random random = new Random();
  int brasil = 1;
  var list = [
    'Brasil',
    'Eua',
    'Italia',
    'Mexico',
    'Chile',
    'Paraguai',
    'China',
    'Japão',
    'Venezuela',
    'Grecia',
    'Jamaica',
    'Suiça',
    'Portugal',
    'India',
    'Ucrânia',
    'Bélgica',
    'Haiti',
    'Hungria',
    'Filipinas',
    'Alemanha'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    brasil = random.nextInt(20) + 1;
                  });
                },
                child: Column(children: <Widget>[
                  Image.asset('Images/bandeira$brasil.webp'),
                  Text(list[brasil - 1]),
                ])),
          ),
        ],
      ),
    );
  }
}
