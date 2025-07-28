import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 5,
                      child: Image.network(
                        "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: -3),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 111, 9, 194),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 111, 9, 194),
                          ),
                        ),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Color.fromARGB(255, 111, 9, 194),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: senhaController,
                      obscureText: isObscureText,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: -3),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 111, 9, 194),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 111, 9, 194),
                            ),
                          ),
                          hintText: "Senha",
                          hintStyle: const TextStyle(color: Colors.white),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 111, 9, 194),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: const Color.fromARGB(255, 237, 236, 238),
                            ),
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          if (emailController.text.trim() ==
                                  "email@email.com" &&
                              senhaController.text.trim() == "123") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("Login efetuado com sucesso!")));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "Erro ao efetuar o login. Email e Senha incorretos!")));
                          }
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 111, 9, 194)),
                        ),
                        child: const Text("ENTRAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400))),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
