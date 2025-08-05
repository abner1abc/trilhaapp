import 'package:flutter/material.dart';

class DadosCadastraisPage extends StatelessWidget {
  final String texto;
  final List<String> dados;
  const DadosCadastraisPage(
      {super.key, required this.texto, required this.dados});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Text(
              "Nome",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}
