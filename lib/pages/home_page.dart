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
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Ações do usuário",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              "Foi cliado $quantidadedeCliques vezes",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Text(
              "O número gerado foi $numeroGerado",
              style: GoogleFonts.acme(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(
                    "10",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Text(
                    "20",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    "30",
                    style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
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
