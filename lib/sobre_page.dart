import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Sobre"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text("Este aplicativo foi desenvolvido como Trabalho de Conclusão do Curso de Aperfeiçoamento de Oficiais/2021 da PMMS, elaborado pelo Capitão William Scaramuzzi Teixeira.",
            style: TextStyle(color: Colors.indigo[900], fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
