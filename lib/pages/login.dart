import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:segundoprojeto/shared/style.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50), // Espaço extra no topo
              Lottie.asset(
                'assets/Lottie/gato-pisca ‐ Feito com o Clipchamp.mp4.lottie.json',
                width: 190,
                height: 190,
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Seu e-mail',
                          labelStyle: TextStyle(color: Colors.black54),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 240, 240),
                        ),
                        validator: (String? email) {
                          if (email == "" || email == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          if (email.length < 6) {
                            return "O email está muito pequeno.";
                          }
                          if (!email.contains("@")) {
                            return "O email é inválido.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        autofocus: true,
                        obscureText: !_showPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: const TextStyle(color: Colors.black54),
                          border: const OutlineInputBorder(),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              _showPassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          ),
                        ),
                        validator: (String? senha) {
                          if (senha == "" || senha == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          if (senha.contains(" ")) {
                            return "Não pode conter espaço.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            buttonEnterClick();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 40),
                            backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
                            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Entrar', style: TextStyle(fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/cadastro');
                          },
                          child: const Text(
                            'Cadastrar-se',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("form ok");
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      print("form erro");
    }
  }
}
