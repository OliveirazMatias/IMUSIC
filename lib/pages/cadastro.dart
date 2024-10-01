import 'package:flutter/material.dart';
import 'package:segundoprojeto/shared/style.dart';

class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100), // Aumentei o espaço no topo
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
                        'Cadastro',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Nome Completo',
                          labelStyle: TextStyle(color: Colors.black54),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 240, 240),
                        ),
                        validator: (String? nome) {
                          if (nome == "" || nome == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Seu E-mail',
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
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Informe seu CPF',
                          labelStyle: TextStyle(color: Colors.black54),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 240, 240),
                        ),
                        validator: (String? cpf) {
                          if (cpf == "" || cpf == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          if (cpf.length < 11) {
                            return "CPF inválido.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Telefone',
                          labelStyle: TextStyle(color: Colors.black54),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 240, 240),
                        ),
                        validator: (String? number) {
                          if (number == "" || number == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          if (number.length < 9) {
                            return "Número de Telefone inválido.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: const TextStyle(color: Colors.black54),
                          border: const OutlineInputBorder(),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              _showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
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
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Senha',
                          labelStyle: const TextStyle(color: Colors.black54),
                          border: const OutlineInputBorder(),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 240, 240),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              _showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          ),
                        ),
                        validator: (String? confirmsenha) {
                          if (confirmsenha == "" || confirmsenha == null) {
                            return "O campo não pode ficar vazio.";
                          }
                          if (confirmsenha.contains(" ")) {
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
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Criar Conta',
                              style: TextStyle(fontSize: 16)),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Já tenho uma conta',
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
              const SizedBox(height: 50), // Adicionei espaço abaixo do contêiner
            ],
          ),
        ),
      ),
    );
  }

  buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("form ok");
      // Aqui você pode adicionar a lógica para criar a conta
    } else {
      print("form erro");
    }
  }
}
