import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueci minha senha'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('Enviar'),
                onPressed: () async {
                  try {
                    // Adicione a lógica para enviar o e-mail de redefinição de senha
                    await FirebaseAuth.instance.sendPasswordResetEmail(
                      email: emailController.text.trim(),
                    );

                    // Exibindo mensagem de sucesso para o usuário
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Um e-mail de redefinição de senha foi enviado para ${emailController.text}.'),
                      ),
                    );

                    // Após enviar o e-mail, pode ser redirecionado para a tela de login ou outra tela desejada
                    Navigator.pop(context); // Volta para a tela anterior (pode ser a tela de login)
                  } catch (e) {
                    // Trate possíveis erros durante o processo
                    print('Erro ao enviar e-mail de redefinição de senha: $e');
                    // Exemplo de exibição de erro para o usuário
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Erro ao enviar e-mail de redefinição de senha. Verifique o endereço de e-mail.'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
