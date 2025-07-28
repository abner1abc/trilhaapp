import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: Text("Dados cadastrais")),
                  onTap: () {},
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: Text("Temos de uso e privacidade")),
                  onTap: () {},
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: Text("Configurações")),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
