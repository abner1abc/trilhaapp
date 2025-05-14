import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadedeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu app",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Foi cliado $quantidadedeCliques vezes",
          style: GoogleFonts.acme(fontSize: 20),
          )),
          Center(
            child: Text(
              "O número gerado foi $numeroGerado",
          style: GoogleFonts.acme(fontSize: 20),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadedeCliques = quantidadedeCliques + 1;
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
          });
        },
      ),
    );
  }
}
