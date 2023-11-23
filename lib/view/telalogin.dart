import 'package:flutter/material.dart';
import 'package:proj_flutter/view/telacadastro.dart';
import 'esqueceusenha.dart';
import 'menu.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.restaurant,
                  size: 100,
                  color: Colors.green,
                ),
                SizedBox(height: 16),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Entrar'),
                  onPressed: () async {
                    try {
                      // Adicione a lógica para autenticação com e-mail e senha
                      // Você pode usar o método signInWithEmailAndPassword do Firebase Authentication
                      // Exemplo:
                      // await FirebaseAuth.instance.signInWithEmailAndPassword(
                      //   email: emailController.text.trim(),
                      //   password: passwordController.text,
                      // );
                
                      // Após autenticar com sucesso, navegue para a próxima tela
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    } catch (e) {
                      // Trate possíveis erros de autenticação, exibindo uma mensagem ao usuário
                      print('Erro de autenticação: $e');
                      // Exemplo de exibição de erro para o usuário
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Erro ao entrar. Verifique suas credenciais.'),
                        ),
                      );
                    }
                  },
                ),
                
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text('Não tem uma conta? Cadastre-se'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: Text('Esqueci minha senha'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
